as yet unclassified
at: index put: value
	
	self pvtCheckIndex: index.
	^self noCheckAt: index put: value
