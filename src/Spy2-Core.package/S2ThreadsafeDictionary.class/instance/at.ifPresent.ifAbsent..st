accessing
at: key ifPresent: aPresentBlock ifAbsent: anAbsentBlock
	^ mutex critical: [ dict at: key ifPresent: aPresentBlock ifAbsent: anAbsentBlock ]