as yet unclassified
removeKey: key ifAbsent: aBlock
	|item hash|
	hash := key largeIdentityHash + 1.
	self cleanFirstTableItemsAt: hash.
	item := (items at: hash + 1).
	"Need to remove first element"
	(item isNotNullItem and: [ item key == key ]) ifTrue: [ 
		tally := tally - 1.
		items at: hash put: item next.
		^ key
		 ].
	"Usual case"
	item := item next.
	[ item isNotNullItem ] whileTrue: [ 
		item key == key ifTrue: [ 
			^ key ].
		item := item next.
		 ].
	"The key is not in the dictionary"
	^ aBlock value