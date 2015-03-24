tests
testMergeableWithBlock

	| b |
	b := [ :v | v + 1 ].
	self assert: (b isEquivalentTo: b).
	self assert: (b isEquivalentTo: b copy).
	self deny: (b isEquivalentTo: [ :v | v + 2 ]).