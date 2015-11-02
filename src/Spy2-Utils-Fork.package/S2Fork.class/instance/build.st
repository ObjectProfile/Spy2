as yet unclassified
build
	self assert: (Smalltalk globals includesKey: prefix) not.
	self buildPrefixTest.
	self forkPackages.
	self forkClasses.
	self forkMethods.
	self fixInternalReferences