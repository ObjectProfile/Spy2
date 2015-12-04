as yet unclassified
tickFor: aClass
	| c |
	c := data at: aClass ifAbsentPut: [ OrderedCollection new ].
	c add: index.
	index := index + 1