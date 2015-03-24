public
profilePackageNamed: packageName
	| classes |
	classes := self classesOfPackage: packageName.
	classes size = 0
		ifTrue: [ ^ self ].
	self profileClasses: classes