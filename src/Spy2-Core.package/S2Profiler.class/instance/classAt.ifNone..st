accessing - read only
classAt: aSymbol ifNone: aBlock
	^ self allClassesAsDictionary at: aSymbol ifAbsent: aBlock
	