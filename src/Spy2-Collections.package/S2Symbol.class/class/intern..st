as yet unclassified
intern: aStringOrSymbol 

	^(self lookup: aStringOrSymbol) ifNil:[
		| aClass aSymbol |
		aStringOrSymbol isSymbol ifTrue:[
			aSymbol := aStringOrSymbol.
		] ifFalse:[
			aClass := aStringOrSymbol isOctetString ifTrue:[S2ByteSymbol] ifFalse:[S2WideSymbol].
			aSymbol := aClass basicNew: aStringOrSymbol size.
			aSymbol string: aStringOrSymbol.
		].
		NewSymbols add: aSymbol.
		aSymbol].