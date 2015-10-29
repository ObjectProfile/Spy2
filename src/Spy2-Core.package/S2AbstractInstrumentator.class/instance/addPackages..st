adding
addPackages: packageCollection
	^ S2Instrumentator new
		methods: self methods , (self gather methodsForPackages: packageCollection)
		classes: self classes , (self gather classesForPackages: packageCollection)
		packages: self packages , packageCollection asArray
			