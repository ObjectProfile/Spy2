tests
testRobustness2
	|col col2 col3 searchTest |
	col := self createStubCollection.
	col2 := self createStubCollection.
	col doWithIndex: [ :o :i | dict at: o put: i ].
	col2 doWithIndex: [ :o :i | dict at: o put: i + 10000 ].
	col3 := self createStubCollection.
	col := nil.
	col3 doWithIndex: [ :o :i | dict at: o put: i + 20000 ].
	Smalltalk garbageCollect; garbageCollect.
	searchTest := [ :offset | [ :o :i | 
		self assert: (dict at: o) equals: i + offset ] ].
	col2 doWithIndex: (searchTest value: 10000).
	col3 doWithIndex: (searchTest value: 20000)