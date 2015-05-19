as yet unclassified
postCopy
	super postCopy.
	table := table collect: [ :each |
		each copy ]