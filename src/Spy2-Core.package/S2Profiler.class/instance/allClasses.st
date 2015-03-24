accessing - read only
allClasses
	| answer |
	allClassesCache ifNotNil: [ ^ allClassesCache ].
	answer := OrderedCollection new.
	self packages do: [:p | 
		answer addAll: p classes ].
	^ answer