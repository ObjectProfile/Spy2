as yet unclassified
copyWithRegex: rxString matchesReplacedWith: aString

	^rxString asRegex
		copy: self replacingMatchesWith: aString