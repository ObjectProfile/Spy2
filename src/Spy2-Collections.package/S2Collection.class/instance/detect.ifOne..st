as yet unclassified
detect: aBlock ifOne: presentBlock
	^ self detect: aBlock ifOne: presentBlock ifNone: [nil] 