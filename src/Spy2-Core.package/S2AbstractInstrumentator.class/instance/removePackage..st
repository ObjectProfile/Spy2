removing
removePackage: package
	^ S2Instrumentator new
		methods: 
			(self methods 
				difference: ((self gatherMethodsForPackage: package) collect: #asFullRingDefinition))
		classes: 
			(self classes 
				difference: ((self gatherClassesForPackage: package) collect: #asFullRingDefinition))
		packages: (self packages difference: {package asFullRingDefinition})