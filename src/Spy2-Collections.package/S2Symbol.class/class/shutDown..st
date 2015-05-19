as yet unclassified
shutDown: aboutToQuit

	SymbolTable addAll: NewSymbols.
	NewSymbols := S2WeakSet new.