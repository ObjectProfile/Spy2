as yet unclassified
includesAssociation: anAssociation
	"reimplemented for portability"
	^ (dictionary
		at: anAssociation key
		ifAbsent: [^ false]) = anAssociation value