as yet unclassified
cleanTableItemsFrom: startingItem
	|item|
	item := startingItem.
	[ item isNotNullItem and: [ item key == nil ] ] whileTrue: [ 
		tally := tally - 1.
		item := item next ].
	startingItem next: item