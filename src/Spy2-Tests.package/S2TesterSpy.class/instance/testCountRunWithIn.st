tests - counting
testCountRunWithIn
	| dict |
	dict := IdentityDictionary new.
	profiler
		runWithInBlock: [ :selector :arguments :receiver :methodSpy | 
			| value |
			value := methodSpy superRun: selector with: arguments in: receiver.
			dict at: methodSpy put: 1 + (dict at: methodSpy ifAbsentPut: [ 0 ]).
			value ].
	self runCountingTest: dict