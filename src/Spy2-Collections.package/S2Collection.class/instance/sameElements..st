as yet unclassified
sameElements: aCollection
	^(self allSatisfy: [:each | aCollection includes: each])
		and: [aCollection allSatisfy: [:each | self includes: each]]