generic api
onPackagesMatching: regex
	| packageCollection |
	packageCollection := self gatherPackagesForRegex: regex.
	self 
		methods: (self gatherMethodsForPackages: packageCollection)
		classes: (self gatherClassesForPackages: packageCollection)
		packages: packageCollection