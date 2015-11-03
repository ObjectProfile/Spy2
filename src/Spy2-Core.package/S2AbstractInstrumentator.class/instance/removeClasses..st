removing
removeClasses: clsCollection
	^ S2Instrumentator new
		methods: 
		(self methods 
			difference: ((self gather methodsForClasses: clsCollection) collect: #asFullRingDefinition))
		classes: (self classes difference: (clsCollection collect: #asFullRingDefinition))
		packages: self packages