creating - metamodel
createSpyClass: class

	| spyPackage spyClass |
	(class getSpy: self) ifNotNil: [ :spyCls | ^ spyCls ].
	spyPackage := self createSpy: class package.
	spyClass := self class spyClassForClass new
		className: class name asSymbol;
		packageSpy: spyPackage;
		yourself.
	spyPackage 
		classAt: class name asSymbol
		put: spyClass.
	self createSpy: class class.
	^ spyClass