as yet unclassified
species
	^self hasWideCharacters
		ifTrue: [WideCharacterSet]
		ifFalse: [CharacterSet]