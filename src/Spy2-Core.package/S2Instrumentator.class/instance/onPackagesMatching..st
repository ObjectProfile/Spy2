generic api
onPackagesMatching: regex
	| packageCollection |
	packageCollection := self gather packagesForRegex: regex.
	self 
		methods: (self gather methodsForPackages: packageCollection)
		classes: (self gather classesForPackages: packageCollection)
		packages: packageCollection