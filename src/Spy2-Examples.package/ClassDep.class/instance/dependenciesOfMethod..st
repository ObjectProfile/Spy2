util
dependenciesOfMethod: aMethod
	| r |
	aMethod cacheDep ifNotNil: [ ^ aMethod cacheDep ].
	r := (depFrames flatCollect: [ :d | d dependenciesOf: aMethod ]) asSet.
	aMethod cacheDep: r.
	^ r