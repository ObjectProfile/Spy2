test - generic api
testApplyOnMethods
	self deny: (S2pyA >> #foo) isSpy.
	self deny: (S2pyB >> #bar) isSpy.
	(S2Instrumentator onMethods: { (S2pyA >> #foo) . (S2pyB >> #bar) }) applyOn: profiler.
	self assert: (S2pyA >> #foo) isSpy.
	self assert: (S2pyB >> #bar) isSpy.