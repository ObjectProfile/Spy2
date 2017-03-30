testing
includes: anObject
	^ mutex critical: [ set includes: anObject ]