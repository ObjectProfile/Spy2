generic api
onPackageNamed: packageName 
	| package |
	package := RPackage organizer packageNamed: packageName.
	self
		methods: (self gather methodsForPackage: package)
		classes: (self gather classesForPackage: package)
		packages: { package }