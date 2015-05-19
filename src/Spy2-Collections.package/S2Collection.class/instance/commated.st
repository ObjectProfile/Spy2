as yet unclassified
commated
	"return a string with a comma between each value"

	| str |
	str := WriteStream on: S2String new.
	self do: [:v | str nextPutAll: (v printString) ] separatedBy: [ str nextPut: $, ].
	^ str contents