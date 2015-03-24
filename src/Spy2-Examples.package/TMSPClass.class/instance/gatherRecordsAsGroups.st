as yet unclassified
gatherRecordsAsGroups
	| result |
	result := OrderedCollection new.
	records do: [ :obj |
		| coll |
		coll := result detect: [ :assoc | assoc key isEquivalentTo: obj ] ifNone: [ | c | c := OrderedCollection new. result add: obj -> c. c ].
		coll value add: obj
	].
	^ result 