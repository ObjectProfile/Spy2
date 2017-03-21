as yet unclassified
associationAt: key ifAbsent: aBlock
	^ mutex critical: [ dict associationAt: key ifAbsent: aBlock ]