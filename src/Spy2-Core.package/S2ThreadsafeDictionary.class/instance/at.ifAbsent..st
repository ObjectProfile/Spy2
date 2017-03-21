accessing
at: key ifAbsent: aBlock
	^ mutex critical: [ dict at: key ifAbsent: aBlock ]