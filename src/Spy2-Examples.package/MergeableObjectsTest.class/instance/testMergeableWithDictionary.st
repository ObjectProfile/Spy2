tests
testMergeableWithDictionary

	| d1 d2 d3 d4 |
	d1 := { #one -> 1 . #two -> 2 } asDictionary.
	d2 := { #one -> 1 . #two -> 2 } asDictionary.
	d3 := { #one -> 1 . #two -> 2 . #three -> 3 } asDictionary.
	d4 := { #one -> 1 . #two -> 2 . #three -> 4 } asDictionary.
	
	self assert: (d1 isEquivalentTo: d2).
	self deny: (d1 isEquivalentTo: d3).
	self deny: (d1 isEquivalentTo: d4).
	self deny: (d3 isEquivalentTo: d4).