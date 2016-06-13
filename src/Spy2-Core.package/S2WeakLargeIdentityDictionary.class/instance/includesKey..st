as yet unclassified
includesKey: key
	|item hash|
	hash := key largeIdentityHash \\ self capacity + 1.
	self cleanFirstTableItemsAt: hash.
	item := items at: hash.
	[ item isNotNullItem ] whileTrue: [ 
		item key == key ifTrue: [ ^ true ].
		item := item next.
		 ].
	^ false