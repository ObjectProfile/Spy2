tests
testRobustness
	|col col2 searchTest |
	col := self createStubCollection.
	col doWithIndex: [ :o :i | dict at: o put: i ].
	col2 := self createStubCollection.
	col := nil.
	col2 doWithIndex: [ :o :i | dict at: o put: i + 10000 ].
	Smalltalk garbageCollect; garbageCollect.
	searchTest := [ :offset | [ :o :i | 
		self assert: (dict at: o) equals: i + offset ] ].
	col2 doWithIndex: (searchTest value: 10000)