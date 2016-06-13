as yet unclassified
at: key ifAbsent: aBlock
	|item hash|
	hash := key largeIdentityHash \\ self capacity + 1.
	self cleanFirstTableItemsAt: hash.
	item := items at: hash.
	[ item isNotNullItem ] whileTrue: [ 
		self cleanTableItemsFrom: item.
		item key == key ifTrue: [ ^ item value ].
		item := item next.
		 ].
	^ aBlock value