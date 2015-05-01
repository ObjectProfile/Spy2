as yet unclassified
at: key ifAbsent: aBlock
	|item|
	item := (items at: key largeIdentityHash + 1).
	[ item isNotNullItem ] whileTrue: [ 
		item key == key ifTrue: [ ^ item value ].
		item := item next.
		 ].
	^ aBlock value