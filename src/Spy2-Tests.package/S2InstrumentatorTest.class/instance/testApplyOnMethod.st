test - generic api
testApplyOnMethod
	self deny: (S2pyA >> #foo) isSpy.
	(S2Instrumentator onMethod: (S2pyA >> #foo)) applyOn: profiler.
	self assert: (S2pyA >> #foo) isSpy.