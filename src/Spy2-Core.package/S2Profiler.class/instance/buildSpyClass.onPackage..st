build metamodel
buildSpyClass: className onPackage: spyPackage
	
	| cls |
	cls := self class spyClassForClass new
		className: className asSymbol;
		packageSpy: spyPackage;
		yourself.
	spyPackage classAt: className asSymbol put: cls.
	^ cls