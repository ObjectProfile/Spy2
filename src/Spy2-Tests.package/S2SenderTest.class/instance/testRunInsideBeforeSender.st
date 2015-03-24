tests
testRunInsideBeforeSender

	self assert: (profiler >> #S2pyA >> #foo) senderInsideBeforeRun equals: (Set with: S2pyB >> #foo)