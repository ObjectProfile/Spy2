removing
removePackages: packageCollection
	^ S2Instrumentator new
		methods: 
			(self methods 
				difference: ((self gather methodsForPackages: packageCollection) 
										collect: #asFullRingDefinition))
		classes: (self classes 
			difference: ((self gather classesForPackages: packageCollection) 
										collect: #asFullRingDefinition))
		packages: (self packages difference: (packageCollection collect: #asFullRingDefinition))