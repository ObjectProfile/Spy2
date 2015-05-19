as yet unclassified
isReservedAttributeName
	^ self size > 4
		and: [self beginsWith: 'xml:']