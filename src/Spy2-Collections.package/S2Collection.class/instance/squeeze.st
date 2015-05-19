as yet unclassified
squeeze
	"Reduce the size by two by removing one of two elements. "

	"
	#(1 2 3 4 5 6 7 8 9 10) squeeze
	"

	| answer |
	answer := S2OrderedCollection new: self size / 2.
	1 to: self size do: [ :i |
		(i \\ 2) = 1 ifTrue: [ answer add: (self at: i) ].
	].
	^ answer