as yet unclassified
lookup: aStringOrSymbol

	^(SymbolTable like: aStringOrSymbol) ifNil: [
		NewSymbols like: aStringOrSymbol
	]