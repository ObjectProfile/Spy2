removing
removeMethods: methodCollection
	^ S2Instrumentator new
		methods: (self methods difference: (methodCollection collect: #asFullRingDefinition))
		classes: self classes
		packages: self packages