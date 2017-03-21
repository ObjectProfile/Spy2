streaming
nextPut: anObject
	^ mutex critical: [ stream nextPut: anObject ]