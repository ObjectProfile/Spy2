as yet unclassified
associationAt: key ifPresent: aBlock
	^ mutex critical: [ dict associationAt: key ifPresent: aBlock ]