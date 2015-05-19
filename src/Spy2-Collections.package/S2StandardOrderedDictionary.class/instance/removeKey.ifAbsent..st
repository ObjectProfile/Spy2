as yet unclassified
removeKey: aKey ifAbsent: aBlock
	self deleteOrderedKey: aKey.
	^ dictionary removeKey: aKey ifAbsent: aBlock.