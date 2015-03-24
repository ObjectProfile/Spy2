tests-start-stop profiling
testStartOnMethods

	| profiler |
	profiler := S2Profiler new.
	self deny: (S2pyA >> #foo) isSpy.
	profiler startOnMethods: {S2pyA >> #foo}.
	Processor yield.
	self assert: (S2pyA >> #foo) isSpy.
	Processor yield.
	self assert: (S2pyA >> #foo) isSpy.
	profiler stop.
	Processor yield.
	self deny: (S2pyA >> #foo) isSpy.
	