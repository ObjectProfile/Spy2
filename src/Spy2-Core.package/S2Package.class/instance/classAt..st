accessing
classAt: aSymbol
	^ classes at: aSymbol ifAbsent: [ self error: 'Class ', aSymbol, ' not found']