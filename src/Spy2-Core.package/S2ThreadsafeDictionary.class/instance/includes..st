testing
includes: anObject
	^ mutex critical: [ dict includes: anObject ]