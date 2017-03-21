accessing
at: key ifPresent: aBlock
	^ mutex critical: [ dict at: key ifPresent: aBlock ]