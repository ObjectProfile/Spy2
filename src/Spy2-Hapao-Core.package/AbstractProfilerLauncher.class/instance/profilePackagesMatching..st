public
profilePackagesMatching: packageNamesArrayOfRegExp
	| classes |
	classes := self classesOfPackagesMatching: packageNamesArrayOfRegExp.
	classes size = 0
		ifTrue: [ ^ self ].
	self profileClasses: classes