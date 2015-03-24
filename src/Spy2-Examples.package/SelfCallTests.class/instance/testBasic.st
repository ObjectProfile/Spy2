tests
testBasic

	| fooCm barCm |
	fooCm := self class >> #foo.
	barCm := self class >> #bar.
	self assert: (fooCm selfCalledMethods includes: barCm)