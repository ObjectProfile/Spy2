public - profiling
addBracketsTo: codeAsString
	| str |
	str := WriteStream on: String new.
	str nextPut: $[.
	str nextPutAll: codeAsString.
	str nextPut: $].
	^ str contents