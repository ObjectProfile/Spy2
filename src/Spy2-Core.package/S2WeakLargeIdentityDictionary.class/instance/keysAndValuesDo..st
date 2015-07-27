as yet unclassified
keysAndValuesDo: aBlock
	tally = 0 ifTrue: [ ^self ].
	1 to: 4096 do: [ :index |
		|item|
		self cleanFirstTableItemsAt: index.
		item := (items at: index).
		[ item isNotNullItem ] whileTrue: [ 
			aBlock 
				value: item key 
				value: item value.
			item := item next.
		 ]. ]