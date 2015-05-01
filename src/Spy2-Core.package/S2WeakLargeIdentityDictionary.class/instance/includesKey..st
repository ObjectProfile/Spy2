as yet unclassified
includesKey: key
	|item|
	item := items at: (key largeIdentityHash + 1).
	[ item isNotNullItem ] whileTrue: [ 
		item key == key ifTrue: [ ^ true ].
		item := item next.
		 ].
	^ false