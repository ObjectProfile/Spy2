enumerating
difference: aCollection
	^ mutex critical: [ dict difference: aCollection ]