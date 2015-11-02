as yet unclassified
tearDown
	self destroyClasses.
	self destroyMethods.
	self destroyPrefixTest.
	self assert: (Smalltalk globals includesKey: prefix) not.