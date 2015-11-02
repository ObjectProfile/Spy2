removing
removePackages: packageCollection
	^ S2Instrumentator new
		methods: 
			(self methods 
				difference: ((self gatherMethodsForPackages: packageCollection) 
										collect: #asFullRingDefinition))
		classes: (self classes 
			difference: ((self gatherClassesForPackages: packageCollection) 
										collect: #asFullRingDefinition))
		packages: (self packages difference: (packageCollection collect: #asFullRingDefinition))