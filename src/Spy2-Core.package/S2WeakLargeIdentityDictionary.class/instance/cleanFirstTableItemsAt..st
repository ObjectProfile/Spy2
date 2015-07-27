as yet unclassified
cleanFirstTableItemsAt: index
	|item|
	item := items at: index.
	[ item isNotNullItem and: [ item key == nil ] ] whileTrue: [ 
		tally := tally - 1.
		item := item next ].
	items at: index put: item