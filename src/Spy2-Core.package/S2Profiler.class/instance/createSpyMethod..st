creating - metamodel
createSpyMethod: method

	|spyMethod spyClass spyPackage | 
	(method getSpy: self) ifNotNil: [ :m | ^ m ].
	spyClass := (method methodClass createSpy: self).
	spyPackage := ((method package ifNil: [method methodClass package]) createSpy: self).
	spyMethod := self class spyClassForMethod new 
							originalMethod: method; 
							selector: method selector;
							classSpy: spyClass;
							packageSpy: spyPackage;
							yourself.
	spyClass localMethodAt: method selector put: spyMethod.
	spyPackage addMethod: spyMethod.
	^ spyMethod