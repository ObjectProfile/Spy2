as yet unclassified
capacity
	^ byteCharacters size +
		(wideCharacters
			ifNil: [0]
			ifNotNil: [wideCharacters size * 8]).