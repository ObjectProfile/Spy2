as yet unclassified
= anObject
	^self species == anObject species and: [
		self wideCharacterMap = anObject wideCharacterMap ]