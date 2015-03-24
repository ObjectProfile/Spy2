accessing
classAt: aSymbol put: aClassType
	self assert: [aSymbol isSymbol].
	
	aClassType className: aSymbol.
	^ classes at: aSymbol put: aClassType