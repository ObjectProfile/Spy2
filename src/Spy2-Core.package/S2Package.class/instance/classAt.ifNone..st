accessing
classAt: aSymbol ifNone: aBlock
	^ classes at: aSymbol ifAbsent: aBlock
	