accessing - read only
allClassesAsDictionary
	| answer |
	allClassesAsDictionaryCache ifNotNil: [ ^ allClassesAsDictionaryCache ].
	answer := IdentityDictionary new.
	self packages do: [:p | p classes do: [:c | answer at: c className put: c]].
	^ answer