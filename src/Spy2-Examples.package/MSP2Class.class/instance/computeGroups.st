as yet unclassified
computeGroups

	| snapshotDict finalGroups    |
	snapshotDict := Dictionary new.
	finalGroups := OrderedCollection new.
	records do: [ :rec |
		(snapshotDict at: rec snapshotAsInteger ifAbsentPut: [ OrderedCollection new ]) add: rec.
		].
	
	snapshotDict values do: [ :snapshotSet |
			finalGroups add: snapshotSet first -> snapshotSet size ].
	"snapshotDict values do: [ :snapshotSet |
		tempGroup := OrderedCollection new.
		tempDict := IdentityDictionary new.
		snapshotSet do: [ :obj | 
			key := (tempGroup 	detect: [:obj2 | obj isStateEqual: obj2] 
									ifNone: [ 
										tempDict at: obj put: 0.
										tempGroup add: obj.
										obj ]).
			tempDict at: key put: (tempDict at: key) + 1 ].
		finalGroups addAll: tempDict associations.
		]."
	^ finalGroups reverseSortedAs: #value
	