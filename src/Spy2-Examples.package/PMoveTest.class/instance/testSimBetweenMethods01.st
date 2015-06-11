tests
testSimBetweenMethods01

	| cm1 cm2 |
	cm1 := self class >> #m1:.
	cm2 := self class >> #m3:.
	self assert: (cm1 simWith: cm2) equals: 1 / 3.
	self assert: (cm2 simWith: cm1) equals: 1 / 3.