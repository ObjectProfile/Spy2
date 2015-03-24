tests
testMergeableWithPoint

	| o1 o2 o3 |
	o1 := 2 @ 3. 
	o2 := o1 copy.
	o3 := 1 @ 1.
	self assert: (o1 isEquivalentTo: o2).
	self assert: (o2 isEquivalentTo: o1).	
	self deny: (o3 isEquivalentTo: o1).
	self deny: (o1 isEquivalentTo: o3).