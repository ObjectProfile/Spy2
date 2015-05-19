as yet unclassified
includesQualifiedName: aQualifiedName orLocalName: aLocalName
	"optimized"
	1 to: self size do: [:i |
		((self at: i)
			isQualifiedName: aQualifiedName
			orLocalName: aLocalName)
			ifTrue: [^ true]].
	^ false.