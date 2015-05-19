as yet unclassified
toNumbers
	| str |
	str := WriteStream on: S2String new.
	self do: [:v | str nextPutAll: v printString; cr ].
	^ Workspace openContents: str contents