as yet unclassified
occurrencesOf: anObject 
	"Refer to the comment in Collection|occurrencesOf:."

	(self includes: anObject)
		ifTrue: [^contents at: anObject]
		ifFalse: [^0]