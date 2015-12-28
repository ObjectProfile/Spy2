export as CSV
exportAsNewCSVOn: str
	"Write the content of the dependency frame in the stream str as CSV"
	| toClasses fromClasses |
	toClasses := classDependencies collect: #value.
	fromClasses := classDependencies collect: #key.
	
	fromClasses do: [ :fc |
		toClasses do: [ :tc |
			(classDependencies includes: fc -> tc) 
				ifTrue: [
					str nextPutAll: self index asString.
					str tab.
					str nextPutAll: fc name.
					str tab.
					str nextPutAll: tc name.
					str tab.
					str nextPutAll: '1'.
					str cr.
				]
		].
	]
	