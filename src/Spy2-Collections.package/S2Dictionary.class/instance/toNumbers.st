as yet unclassified
toNumbers
	| str |
	str := WriteStream on: String new.
	self associationsDo: [:v | str nextPutAll: v key printString, '	', v value printString; cr ].
	^ Workspace openContents: str contents