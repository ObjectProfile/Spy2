tests
testMergeableWithString

	self assert: ('abc' isEquivalentTo: 'abc' copy).
	self deny: ('abc' isEquivalentTo: 'abcd' copy).