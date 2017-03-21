tests
testCreateWriteStream
	| rawStr str |
	rawStr := OrderedCollection new writeStream.
	str := S2ThreadsafeWriteStream on: rawStr.
	self assert: str stream == rawStr