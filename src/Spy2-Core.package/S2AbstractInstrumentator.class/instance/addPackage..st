adding
addPackage: package
	^ S2Instrumentator new
		methods: self methods , (self gather methodsForPackage: package)
		classes: self classes , (self gather classesForPackage: package)
		packages: self packages , { package }
			