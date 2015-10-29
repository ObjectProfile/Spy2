as yet unclassified
methodsForClasses: classCollection
	| nonMetaclasses |
	nonMetaclasses := (classCollection collect: #theNonMetaClass) asSet.
	^ (nonMetaclasses , (nonMetaclasses collect: #class)) flatCollect: #methods