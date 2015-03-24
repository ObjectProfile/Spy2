test - instrumentation
testRunTestsForPackage

	| profiler |
	profiler := S2Profiler runTestsForPackageNamed: 'Spy2-Scenario'.
	self assert: profiler unitTestResult passed size equals: 4.
	self deny: profiler unitTestResult hasErrors.