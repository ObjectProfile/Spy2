tests
testDepOnMethods

	| cm |
	cm := self class >> #m1:.
	self assert: cm dep equals: { Object }