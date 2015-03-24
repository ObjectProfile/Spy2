accessing - read only
classAt: aSymbol
	^ self allClassesAsDictionary at: aSymbol ifAbsent: [ self error: 'Class ', aSymbol, ' not found']