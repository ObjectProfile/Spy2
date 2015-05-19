as yet unclassified
asMultilineString
	^ S2String streamContents: [ :stream |
		self
			do: [ :each | stream nextPutAll: each ]
			separatedBy: [ stream nextPut: Character cr ] ]