accessing
interestingMethods
	^ TSGroup withAll: (((self allMethods select: #hasBeenExecuted) select: #isTest) sortedAs: #selector) 