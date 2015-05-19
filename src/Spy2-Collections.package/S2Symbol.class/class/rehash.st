as yet unclassified
rehash		"Symbol rehash"
	"Rebuild the hash table, reclaiming unreferenced Symbols."

	SymbolTable := S2WeakSet withAll: self allSubInstances.
	NewSymbols := S2WeakSet new.