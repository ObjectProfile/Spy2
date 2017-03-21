accessing
at: key put: anObject
	^ mutex critical: [ dict at: key put: anObject ]