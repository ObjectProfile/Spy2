plugins
collectPragmas: keyword
	^ (PragmaCollector
		filter:
			[ :prg | prg selector = keyword and: [ self isKindOf: prg methodClass ] ])
		reset;
		collected