tests
testSimBetweenMethods

	| cm1 cm2 |
	cm1 := self class >> #m1:.
	cm2 := self class >> #m2:.
	self assert: (cm1 simWith: cm2) equals: 0.
	self assert: (cm2 simWith: cm1) equals: 0.