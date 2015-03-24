tests-start-stop profiling
testHasStarted

	| profiler |
	profiler := S2Profiler new.
	self deny: profiler hasStarted.
	profiler startOnMethods: {S2pyA >> #foo}.
	self assert: profiler hasStarted.
	Processor yield.
	self assert: profiler hasStarted.
	profiler stop.
	self deny: profiler hasStarted.
	Processor yield.
	self deny: profiler hasStarted.
	