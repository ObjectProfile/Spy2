adding
addAll: aKeyedCollection
	^ mutex critical: [ dict addAll: aKeyedCollection ]