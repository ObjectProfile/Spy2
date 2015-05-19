as yet unclassified
removeKey: aKey
	self deleteOrderedKey: aKey.
	^ dictionary removeKey: aKey.