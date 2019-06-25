public - profiling
profilePackagesMatching: packageNamesArrayOfRegExp
	| classes |
	classes := self classesOfPackagesMatching: packageNamesArrayOfRegExp.
	classes ifEmpty: [ ^ self ].
	classes copy do: [ :c | classes addAll: c unitTestsReferencingMe ].
	self profileClasses: classes