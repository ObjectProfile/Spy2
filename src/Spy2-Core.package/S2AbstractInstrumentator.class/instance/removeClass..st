removing
removeClass: cls
	^ S2Instrumentator new
		methods: (self methods difference: ((self gather methodsForClass: cls) collect: #asFullRingDefinition))
		classes: (self classes difference: { cls asFullRingDefinition })
		packages: self packages