tests - counting
testCurrentRunningTest

	| flag |
	flag := false.
	profiler beforeRunBlock: [:selector :arguments :receiver :methodSpy | 
		self assert: methodSpy currentRunningTest selector equals: #testABar.
		flag := true ].
	profiler profile: [ S2pyDummyTest new testABar ] onPackageNamed: 'Spy2-Scenario'.
	self assert: flag