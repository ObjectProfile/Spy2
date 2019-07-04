public - profiling
profilePackageNamed: packageNamesArrayOfRegExp
	| classes |
	classes := self classesOfPackagesMatching: packageNamesArrayOfRegExp.
	classes size = 0
		ifTrue: [ ^ self ].
	self profileClasses: classes