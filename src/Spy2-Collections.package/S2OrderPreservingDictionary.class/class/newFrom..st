as yet unclassified
newFrom: anAssociationCollection
	| newDictionary |

	newDictionary := super newFrom: anAssociationCollection.
	(anAssociationCollection respondsTo: #defaultValue)
		ifTrue: [newDictionary defaultValue: anAssociationCollection defaultValue].
	^ newDictionary.