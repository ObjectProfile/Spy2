tests - counting
testCountAfter

	| dict |
	dict := IdentityDictionary new.
	profiler afterRunBlock: [:selector :arguments :receiver :methodSpy | 
		dict at: methodSpy put: 1 + (dict at: methodSpy ifAbsentPut: [0]) ].
	self runCountingTest: dict