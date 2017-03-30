adding
add: anObject
	mutex critical: [ set add: anObject ]