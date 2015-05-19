as yet unclassified
isAsciiString

	^ self anySatisfy: [ :each | each asciiValue > 127 ]
