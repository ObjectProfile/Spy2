tests
testRunBeforeSender

	self assert: (profiler >> #S2pyA >> #foo) sendersBefore equals: (Set with: S2pyB >> #foo)