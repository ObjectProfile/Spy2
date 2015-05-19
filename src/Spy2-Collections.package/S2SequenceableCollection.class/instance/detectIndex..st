as yet unclassified
detectIndex: aBlock

	^ self detectIndex: aBlock ifNone: [ self errorNotFound: aBlock ] 