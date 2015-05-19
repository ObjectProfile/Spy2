as yet unclassified
initialize

	"Symbol initialize"

	S2Symbol rehash.
	OneCharacterSymbols := nil.
	OneCharacterSymbols := (1 to: 256) collect: [ :i | (i - 1) asCharacter asSymbol].
	Smalltalk addToShutDownList: self.
