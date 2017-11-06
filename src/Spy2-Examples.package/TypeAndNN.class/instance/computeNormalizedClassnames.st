as yet unclassified
computeNormalizedClassnames
	| executedMethods |
	executedMethods := self executedMethods.
	normalizedClassnames := ((executedMethods flatCollect: #types) flatCollect: #yourself) asSet asArray sortedAs: #name.
	 