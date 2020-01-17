public - profiling
profilePackageNamed: packageNamesArrayOfRegExp
	| classes |
	classes := self classesOfPackagesMatching: packageNamesArrayOfRegExp.
	classes ifEmpty: [ ^ self ].
	self profileClasses: classes