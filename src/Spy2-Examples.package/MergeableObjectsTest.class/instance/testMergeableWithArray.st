tests
testMergeableWithArray

	| a1 a2 a3 a4 |
	a1 := #(2).
	a2 := #(2) copy.
	a3 := #(4).
	a4 := #(2 3).
	self assert: (a1 isEquivalentTo: a2).
	self deny: (a1 isEquivalentTo: a3).
	self deny: (a1 isEquivalentTo: a4).
	