as yet unclassified
convertToEncoding: encodingName
	^self convertToWithConverter: (TextConverter newForEncoding: encodingName).