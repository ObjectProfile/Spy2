as yet unclassified
with: aCharacter
	| newCollection |
	aCharacter asInteger < 256
		ifTrue:[newCollection := S2ByteString new: 1]
		ifFalse:[newCollection := S2WideString new: 1].
	newCollection at: 1 put: aCharacter.
	^newCollection