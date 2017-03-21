tests
testIncludesKey
	| rawDict dict |
	rawDict := Dictionary new.
	dict := S2ThreadsafeDictionary on: rawDict.
	rawDict at: #foo put: #bar.
	self assert: (dict includesKey: #foo)
	