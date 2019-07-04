public - profiling
profilePackagesMatching: packageNamesArrayOfRegExp
	| classes |
	classes := self classesOfPackagesMatching: packageNamesArrayOfRegExp.
	classes ifEmpty: [ ^ self ].
	self fetchWithUnitTests: classes.
	self profileClasses: classes