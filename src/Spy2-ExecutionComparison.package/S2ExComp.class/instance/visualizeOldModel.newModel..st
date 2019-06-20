visualization
visualizeOldModel: beforeModel newModel: afterModel

	| executedMethodsBefore executedMethodsAfter commonMethods onlyBeforeMethods onlyAfterMethods v ins |
	executedMethodsBefore := beforeModel allExecutedMethods.
	executedMethodsAfter := afterModel allExecutedMethods.
	commonMethods := OrderedCollection new.
	executedMethodsBefore do: [ :mb | 
		| cName |
		cName := mb classSpy className.
		executedMethodsAfter do: [ :ma |
			(ma classSpy className = cName and: [ ma selector = mb selector ]) ifTrue: [ 
				commonMethods add: (S2ExCompMethod new beforeMethod: mb; afterMethod: ma) ]
		] 
	].

	onlyBeforeMethods := executedMethodsBefore select: [ :mmb | commonMethods noneSatisfy: [ :m | m beforeMethod == mmb ] ].
	onlyAfterMethods := executedMethodsAfter select: [ :mma | commonMethods noneSatisfy: [ :m | m afterMethod == mma ] ].


	v := RSView new.
	S2ExCompVisualization new 
		commonMethods: commonMethods;
		onlyAfterMethods: onlyAfterMethods;
		onlyBeforeMethods: onlyBeforeMethods;
		buildView: v.
	v @ RSControlsView.

	ins := RSInspectable new.
	ins inspectElementBlock: [ :m |
		| tv |
		tv := RSView new.
		S2ExCompVisualization new 
			commonMethods: commonMethods;
			onlyAfterMethods: onlyAfterMethods;
			onlyBeforeMethods: onlyBeforeMethods;
			buildView: v.
		tv open
	].
	v elements @ ins.
	
	v elements @ (RSMenuActivable new menuDo: [ :menu :element | menu add: 'Inspect' target: element model selector: #inspect ]).
	v open.
