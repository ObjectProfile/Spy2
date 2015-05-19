as yet unclassified
indexOfSubCollection: sub 
	^ self
		indexOfSubCollection: sub
		startingAt: 1
		ifAbsent: [0]