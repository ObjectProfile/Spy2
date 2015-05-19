as yet unclassified
*= anObject
	^anObject isNumber
		ifTrue:[self primMulScalar: anObject asFloat]
		ifFalse:[self primMulArray: anObject]