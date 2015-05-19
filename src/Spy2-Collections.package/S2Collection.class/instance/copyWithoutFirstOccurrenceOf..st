as yet unclassified
copyWithoutFirstOccurrenceOf: anObject
	| done |
	done := false.
	^ self reject: [ :each |
		each = anObject
			and: [ done not
			and: [ done := true ] ] ]