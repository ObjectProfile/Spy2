adding
addPackage: package
	^ S2Instrumentator new
		methods: self methods , (self gatherMethodsForPackage: package)
		classes: self classes , (self gatherClassesForPackage: package)
		packages: self packages , { package }
			