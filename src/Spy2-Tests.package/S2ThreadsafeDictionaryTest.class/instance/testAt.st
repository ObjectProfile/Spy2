tests
testAt
	| rawDict dict |
	rawDict := Dictionary new.
	dict := S2ThreadsafeDictionary on: rawDict.
	rawDict at: #foo put: #bar.
	self assert: (dict at: #foo) equals: #bar
	