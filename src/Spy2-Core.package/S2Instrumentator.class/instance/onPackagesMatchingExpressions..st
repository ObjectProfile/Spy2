generic api
onPackagesMatchingExpressions: expressions
	| packageCollection |
	packageCollection := self gatherPackagesForRegexExpressions: expressions.
	self 
		methods: (self gatherMethodsForPackages: packageCollection)
		classes: (self gatherClassesForPackages: packageCollection)
		packages: packageCollection