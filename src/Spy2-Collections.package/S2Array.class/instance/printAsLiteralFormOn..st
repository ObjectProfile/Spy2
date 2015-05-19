as yet unclassified
printAsLiteralFormOn: aStream
	aStream nextPut: $#.
	self printElementsOn: aStream
