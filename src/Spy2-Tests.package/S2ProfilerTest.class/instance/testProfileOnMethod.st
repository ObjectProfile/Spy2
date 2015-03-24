test - instrumentation
testProfileOnMethod

	| profiler |
	self deny: (S2pyA>>#foo) isSpy.
	profiler := S2Profiler profile: [self assert: (S2pyA>>#foo) isSpy] onMethod: S2pyA >> #foo.
	self deny: (S2pyA>>#foo) isSpy.