tests - counting
testCountBefore

	| dict |
	dict := IdentityDictionary new.
	profiler beforeRunBlock: [:selector :arguments :receiver :methodSpy | 
		dict at: methodSpy put: 1 + (dict at: methodSpy ifAbsentPut: [0]) ].
	self runCountingTest: dict