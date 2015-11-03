generic api
onPackage: package
	self 
		methods: (self gather methodsForPackage: package)
		classes: (self gather classesForPackage: package)
		packages: { package }