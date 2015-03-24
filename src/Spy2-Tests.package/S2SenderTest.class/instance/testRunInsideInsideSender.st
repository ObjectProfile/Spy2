tests
testRunInsideInsideSender

	self assert: (profiler >> #S2pyA >> #foo) senderInsideInsideRun equals: (Set with: S2pyB >> #foo)