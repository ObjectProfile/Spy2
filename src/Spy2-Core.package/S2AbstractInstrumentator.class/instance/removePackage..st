removing
removePackage: package
	^ S2Instrumentator new
		methods: 
			(self methods 
				difference: ((self gather methodsForPackage: package) collect: #asFullRingDefinition))
		classes: 
			(self classes 
				difference: ((self gather classesForPackage: package) collect: #asFullRingDefinition))
		packages: (self packages difference: {package asFullRingDefinition})