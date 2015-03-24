tests
testMergeableWithArray2
	self deny: (#(4) isEquivalentTo: 54).
	self assert: (#(4) isEquivalentTo: #(4) copy).
	self deny: (#(4) isEquivalentTo: #(5)).