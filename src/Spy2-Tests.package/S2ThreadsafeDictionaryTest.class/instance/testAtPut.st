tests
testAtPut
	| rawDict dict |
	rawDict := Dictionary new.
	dict := S2ThreadsafeDictionary on: rawDict.
	dict at: #foo put: #bar.
	self assert: (rawDict at: #foo) equals: #bar
	