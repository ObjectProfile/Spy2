tests
testLockBefore

	| dict |
	dict := IdentityDictionary new.
	profiler beforeRunBlock: [:selector :arguments :receiver :methodSpy | 
		self assert: (S2pyB>>#foo) isSpy.
		S2pyA new foo.
		dict at: methodSpy put: 1 + (dict at: methodSpy ifAbsentPut: [0]) ].
	self runCountingTest: dict