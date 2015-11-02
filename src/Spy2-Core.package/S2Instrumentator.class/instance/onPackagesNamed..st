generic api
onPackagesNamed: names
	| packageCollection |
	packageCollection := names collect: [ :name | RPackage organizer packageNamed: name ].
	self 
		methods: (self gatherMethodsForPackages: packageCollection)
		classes: (self gatherClassesForPackages: packageCollection)
		packages: packageCollection