as yet unclassified
at: key
	|item|
	item := (items at: key largeIdentityHash + 1).
	[ item isNotNullItem ] whileTrue: [ 
		item key == key ifTrue: [ ^ item value ].
		item := item next.
		 ].
	self errorKeyNotFound: key