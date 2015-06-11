tests
testSimBetweenMethodsAndClass01

	| cm |
	cm := self class >> #m1:.
	self assert: (cm simWithClass: Spy2) equals: 0.
	self assert: (cm simWithClass: PMoveTest) equals: 1 / 6.

