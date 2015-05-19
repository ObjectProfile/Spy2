as yet unclassified
convertFromEncoding: encodingName
	^self convertFromWithConverter: (TextConverter newForEncoding: encodingName)