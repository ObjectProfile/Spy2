visualization
visualizeOldModel: beforeModel newModel: afterModel

	| executedMethodsBefore executedMethodsAfter commonMethods onlyBeforeMethods onlyAfterMethods |
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
	onlyAfterMethods := executedMethodsBefore select: [ :mma | commonMethods noneSatisfy: [ :m | m afterMethod == mma ] ].

	self halt.