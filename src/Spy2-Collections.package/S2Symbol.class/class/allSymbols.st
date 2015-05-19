as yet unclassified
allSymbols
	"Answer all interned symbols"
	^S2Array streamContents:[:s|
		s nextPutAll: NewSymbols.
		s nextPutAll: OneCharacterSymbols.
		s nextPutAll: SymbolTable.
	].
