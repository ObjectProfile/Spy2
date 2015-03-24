tests
testRunInsideSender

	self assert: (profiler >> #S2pyA >> #foo) senderInsideRun equals: (Set with: S2pyB >> #foo)