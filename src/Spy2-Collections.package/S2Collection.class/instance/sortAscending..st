as yet unclassified
sortAscending: aBlockWithOneArgument
	^ self sorted: [ :x :y |
		(aBlockWithOneArgument value: x) < (aBlockWithOneArgument value: y) ]