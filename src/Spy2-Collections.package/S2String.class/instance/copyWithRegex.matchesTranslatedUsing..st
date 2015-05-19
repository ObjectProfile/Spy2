as yet unclassified
copyWithRegex: rxString matchesTranslatedUsing: aBlock

	^rxString asRegex
		copy: self translatingMatchesUsing: aBlock