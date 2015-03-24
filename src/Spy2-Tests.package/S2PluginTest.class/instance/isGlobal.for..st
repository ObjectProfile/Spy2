utils
isGlobal: global for: aSymbol
	^ global = (Smalltalk bindingOf: aSymbol)