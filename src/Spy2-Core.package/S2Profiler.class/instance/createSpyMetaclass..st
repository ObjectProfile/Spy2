creating - metamodel
createSpyMetaclass: metaclass

	| metaclassSpy baseclass |
	(metaclass getSpy: self) ifNotNil: [ :spy | ^ spy ].
	baseclass := metaclass theNonMetaClass createSpy: self.
	metaclassSpy := 
		self class spyClassForClass new 
			className: metaclass name asSymbol;
			packageSpy: baseclass packageSpy;
			yourself.
	baseclass metaclassSpy: metaclassSpy.
	^ metaclassSpy