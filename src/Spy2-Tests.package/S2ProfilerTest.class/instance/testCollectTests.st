test - run tests
testCollectTests

	| profiler tests |
	profiler := S2Profiler new.
	profiler profile: [ 
		tests := profiler collectTests.
		self 
			assert: (tests collect: #selector) asSet 
			equals: #(#testAFoo #testABar #testBFoo #testBBar) asSet
		] 
		onPackageNamed: 'Spy2-Scenario'.
	