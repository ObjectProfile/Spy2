as yet unclassified
methodsForClasses: classCollection
	| nonMetaclasses |
	nonMetaclasses := (classCollection collect: #instanceSide) asSet.
	^ (nonMetaclasses , (nonMetaclasses collect: #class)) flatCollect: #methods