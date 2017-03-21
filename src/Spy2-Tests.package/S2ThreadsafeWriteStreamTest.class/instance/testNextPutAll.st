tests
testNextPutAll
	| rawStr str |
	rawStr := OrderedCollection new writeStream.
	str := S2ThreadsafeWriteStream on: rawStr.
	self assert: rawStr collection isEmpty.
	str nextPutAll: #foo.
	self assert: (rawStr collection first: 3) equals: #($f $o $o) asOrderedCollection