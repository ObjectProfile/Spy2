as yet unclassified
isLiteral
	^self class == Array and: [self allSatisfy: [:each | each isLiteral]]