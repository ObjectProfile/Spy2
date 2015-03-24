test - adding
testBasicAddMethodToMethods
	self denyAnySpyMethods: (S2pyB >> #foo).
	self denyAnySpyMethods: (S2pyDummyTest >> #testABar).
	(S2Instrumentator onMethod: (S2pyB >> #foo)) applyOn: profiler.
	self assertAllSpyMethods: (S2pyB >> #foo).
	self denyAnySpyMethods: (S2pyDummyTest >> #testABar).
	profiler addMethodToProfile: (S2pyDummyTest >> #testABar).
	self assertAllSpyMethods: (S2pyB >> #foo).
	self assertAllSpyMethods: (S2pyDummyTest >> #testABar).