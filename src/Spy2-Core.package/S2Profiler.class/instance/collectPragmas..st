plugins
collectPragmas: keyword

	^ (PragmaCollector 
			filter: [:prg | 
				prg keyword = keyword and: [self isKindOf: prg methodClass]])
			reset;
			collected