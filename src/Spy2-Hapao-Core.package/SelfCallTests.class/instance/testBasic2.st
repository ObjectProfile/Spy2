tests
testBasic2

	| fooCm barCm |
	fooCm := self class >> #foo2.
	barCm := self class >> #bar.
	self assert: fooCm selfCalledMethods size equals: 1.
	self assert: fooCm selfCalledMethods anyOne equals: barCm