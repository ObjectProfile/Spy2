removing
removeClasses: clsCollection
	^ S2Instrumentator new
		methods: 
		(self methods 
			difference: ((self gatherMethodsForClasses: clsCollection) collect: #asFullRingDefinition))
		classes: (self classes difference: (clsCollection collect: #asFullRingDefinition))
		packages: self packages