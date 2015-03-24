adding
addPackages: packageCollection
	^ S2Instrumentator new
		methods: self methods , (self gatherMethodsForPackages: packageCollection)
		classes: self classes , (self gatherClassesForPackages: packageCollection)
		packages: self packages , packageCollection asArray
			