accessing
normalizedClassnames
	normalizedClassnames ifNil: [ self computeNormalizedClassnames ].
	^ normalizedClassnames