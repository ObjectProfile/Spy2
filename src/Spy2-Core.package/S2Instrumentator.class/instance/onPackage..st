generic api
onPackage: package
	self 
		methods: (self gatherMethodsForPackage: package)
		classes: (self gatherClassesForPackage: package)
		packages: { package }