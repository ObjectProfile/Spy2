tests
testNextPut
	| rawStr str |
	rawStr := OrderedCollection new writeStream.
	str := S2ThreadsafeWriteStream on: rawStr.
	self assert: rawStr collection isEmpty.
	str nextPut: #foo.
	self assert: rawStr collection first equals: #foo