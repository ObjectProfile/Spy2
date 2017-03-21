accessing
at: key ifAbsentPut: aBlock
	^ mutex critical: [ dict at: key ifAbsentPut: aBlock ]