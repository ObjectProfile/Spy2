test - instrumentation
testRunTestsForClassCategory

	| profiler |
	profiler := S2Profiler runTestsForClassCategory: 'Spy2-Scenario'.
	self assert: profiler unitTestResult passed size equals: 4.
	self deny: profiler unitTestResult hasErrors.