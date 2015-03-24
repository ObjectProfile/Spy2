*Spy2-Examples
asLinedText

	| str |
	str := WriteStream on: String new.
	self do: [ :v | str nextPutAll: v printString; cr ].
	Workspace openContents: str contents 