tests
testMergeableWithObject

	| o1 o2 |
	o1 := Object new. 
	o2 := Object new.
	self assert: (o1 isEquivalentTo: o2).
	self assert: (o2 isEquivalentTo: o1).	