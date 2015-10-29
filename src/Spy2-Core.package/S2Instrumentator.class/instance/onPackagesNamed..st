generic api
onPackagesNamed: names
	| packageCollection |
	packageCollection := names collect: [ :name | RPackage organizer packageNamed: name ].
	self 
		methods: (self gather methodsForPackages: packageCollection)
		classes: (self gather classesForPackages: packageCollection)
		packages: packageCollection