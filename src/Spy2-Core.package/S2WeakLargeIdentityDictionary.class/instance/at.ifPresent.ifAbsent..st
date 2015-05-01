as yet unclassified
at: key ifPresent: presentBlock ifAbsent: absentBlock
	|item|
	item := (items at: key largeIdentityHash + 1).
	[ item isNotNullItem ] whileTrue: [ 
		item key == key ifTrue: [ ^ presentBlock value: item value ].
		item := item next.
		 ].
	^ absentBlock value