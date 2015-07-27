as yet unclassified
at: key ifPresent: presentBlock ifAbsent: absentBlock
	|item hash|
	hash := key largeIdentityHash + 1.
	self cleanFirstTableItemsAt: hash.
	item := (items at: key largeIdentityHash + 1).
	[ item isNotNullItem ] whileTrue: [ 
		item key == key ifTrue: [ ^ presentBlock value: item value ].
		item := item next.
		self cleanTableItemsFrom: item.
		 ].
	^ absentBlock value