accessing
at: key ifPresent: aPresentBlock ifAbsentPut: anAbsentBlock
	^ mutex critical: [ dict at: key ifPresent: aPresentBlock ifAbsentPut: anAbsentBlock ]