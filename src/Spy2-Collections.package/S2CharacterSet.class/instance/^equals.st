as yet unclassified
= anObject
	^self species == anObject species and: [
		self byteArrayMap = anObject byteArrayMap ]