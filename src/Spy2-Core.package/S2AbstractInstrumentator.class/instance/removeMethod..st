removing
removeMethod: method
	^ S2Instrumentator new
		methods: (self methods difference: {method asFullRingDefinition})
		classes: self classes
		packages: self packages