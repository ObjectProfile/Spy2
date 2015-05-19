as yet unclassified
expandWithNamespaceURI: aNamespaceUri
	aNamespaceUri size > 0
		ifTrue: [^ 'Q{', aNamespaceUri, '}', self]
		ifFalse: [^ self]