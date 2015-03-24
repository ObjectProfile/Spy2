creating - metamodel
createSpyPackage: package

	(package getSpy: self) ifNotNil: [ :spyPak | ^ spyPak ].
	^ packages 
		at: package packageName
		put: (self buildSpyPackage: package packageName)