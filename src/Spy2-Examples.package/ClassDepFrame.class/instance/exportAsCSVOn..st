export as CSV
exportAsCSVOn: str
	"Write the content of the dependency frame in the stream str as CSV"
	| toClasses fromClasses |
	toClasses := classDependencies collect: #value.
	fromClasses := classDependencies collect: #key.
	
	str nextPutAll: 'from/to'.
	toClasses do: [ :c | str tab; nextPutAll: c name ].
	str cr.
	fromClasses do: [ :fc |
		str nextPutAll: fc name.
		toClasses do: [ :tc |
			str tab.
			(classDependencies includes: fc -> tc) 
				ifTrue: [ str nextPutAll: '1' ]
				ifFalse: [ str nextPutAll: '0' ]
		].
		str cr.
	]
	