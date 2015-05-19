as yet unclassified
hasClassNamed: aString
	"Answer whether there is a class of the given name, but don't intern aString if it's not alrady interned."

	S2Symbol 
		hasInterned: aString 
		ifTrue:  [:aSymbol | ^ (self at: aSymbol ifAbsent: [nil]) isClass].
	^ false