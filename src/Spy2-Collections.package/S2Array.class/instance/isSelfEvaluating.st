as yet unclassified
isSelfEvaluating
	^ (self allSatisfy: [:each | each isSelfEvaluating]) and: [self class == Array]