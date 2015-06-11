algorithm
methodSim: m1 with: m2

	| a b c |
	a := (m1 dep intersection: m2 dep) size.
	b := (m1 dep copyWithoutAll: m2 dep) size.
	c := (m2 dep copyWithoutAll: m1 dep) size.
	^ a / (a + (2 * (b + c)))