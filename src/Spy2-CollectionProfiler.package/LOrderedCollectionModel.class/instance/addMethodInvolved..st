as yet unclassified
addMethodInvolved: spyMethod
	spyMethod ifNil: [ ^ self ].
	methodsInvolved add: spyMethod.
	spyMethod addCollectionModel: self