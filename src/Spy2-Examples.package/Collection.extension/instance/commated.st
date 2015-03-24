*Spy2-Examples
commated
	"return a string with a comma between each value"

	| str |
	str := WriteStream on: String new.
	self do: [:v | str nextPutAll: (v printString) ] separatedBy: [ str nextPut: $, ].
	^ str contents