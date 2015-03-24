generic api
onPackageNamed: packageName 
	| package |
	package := RPackage organizer packageNamed: packageName.
	self
		methods: (self gatherMethodsForPackage: package)
		classes: (self gatherClassesForPackage: package)
		packages: { package }