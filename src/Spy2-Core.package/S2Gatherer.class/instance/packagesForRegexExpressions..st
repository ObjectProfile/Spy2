as yet unclassified
packagesForRegexExpressions: regexExpressions
	^ (regexExpressions flatCollect: [ :regex | 
			RPackage organizer packages select: [:p | regex match: (p name asString)] ]) asSet