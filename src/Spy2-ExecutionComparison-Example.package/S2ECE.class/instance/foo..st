inline
foo: nb
	nb > 0 ifTrue: [ self barPositive ].
	nb < 0 ifTrue: [ self barNegative ]