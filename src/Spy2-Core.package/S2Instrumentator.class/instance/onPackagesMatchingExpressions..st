generic api
onPackagesMatchingExpressions: expressions
	| packageCollection |
	packageCollection := self gather packagesForRegexExpressions: expressions.
	self 
		methods: (self gather methodsForPackages: packageCollection)
		classes: (self gather classesForPackages: packageCollection)
		packages: packageCollection