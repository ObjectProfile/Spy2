streaming
nextPutAll: aCollection
	^ mutex critical: [ stream nextPutAll: aCollection ]