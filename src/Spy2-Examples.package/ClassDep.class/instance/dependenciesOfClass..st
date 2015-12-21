util
dependenciesOfClass: aClass
	| r |
	aClass cacheDep ifNotNil: [ ^ aClass cacheDep ].
	r := (depFrames flatCollect: [ :d | d dependenciesOfClass: aClass ]) asSet.
	aClass cacheDep: r.
	^ r