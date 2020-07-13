visualization
visualizeOldModel: beforeModel newModel: afterModel

	| executedMethodsBefore executedMethodsAfter commonMethods onlyBeforeMethods onlyAfterMethods v con |
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


	v := RSCanvas new.
self assert: [ (onlyBeforeMethods intersection: onlyAfterMethods) isEmpty ].
self assert: [ (commonMethods intersection: onlyAfterMethods) isEmpty ].
self assert: [ (commonMethods intersection: onlyBeforeMethods) isEmpty ].
	S2ExCompVisualization new 
		commonMethods: commonMethods;
		onlyAfterMethods: onlyAfterMethods;
		onlyBeforeMethods: onlyBeforeMethods;
		buildView: v.

"	ins := RSInspectable new.
	ins inspectShapeBlock: [ :m |
		| tv |
		tv := RSCanvas new.
		S2ExCompVisualization new 
			commonMethods: commonMethods;
			onlyAfterMethods: onlyAfterMethods;
			onlyBeforeMethods: onlyBeforeMethods;
			buildView: v.
		tv open
	].
	v nodes @ ins."
	
"	v nodes @ (RSMenuActivable new menuDo: [ :menu :element | menu add: 'Inspect' target: element model selector: #inspect ])."
	
"	self assert: [ v nodes allSatisfy: [ :e | e model class == S2ExCompMethod ] ] description: 'Something wrong'."

	con := RSCanvasController new.
	con addInteraction: RSSearchInCanvas new.
	^ v @ con