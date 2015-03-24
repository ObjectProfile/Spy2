tests
testRunSender

	self assert: (profiler >> #S2pyA >> #foo) sendersRun equals: (Set with: S2pyB >> #foo)