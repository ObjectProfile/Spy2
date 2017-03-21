tests
testCreateDictionary
	| rawDict dict |
	rawDict := Dictionary new.
	dict := S2ThreadsafeDictionary on: rawDict.
	self assert: dict dict == rawDict
	