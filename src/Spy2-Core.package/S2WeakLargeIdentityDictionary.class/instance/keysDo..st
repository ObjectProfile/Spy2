as yet unclassified
keysDo: aBlock
	tally = 0 ifTrue: [ ^self ].
	1 to: 4096 do: [ :index |
		|item|
		self cleanFirstTableItemsAt: index.
		item := (items at: index).
		[ item isNotNullItem ] whileTrue: [ 
			aBlock 
				value: item key.
			item := item next.
		 ]. ]