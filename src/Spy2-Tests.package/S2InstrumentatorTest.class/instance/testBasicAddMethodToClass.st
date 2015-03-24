test - adding
testBasicAddMethodToClass
	self denyAnySpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: (S2pyDummyTest >> #testABar).
	(S2Instrumentator onClass: S2pyB) applyOn: profiler.
	self assertAllSpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: (S2pyDummyTest >> #testABar).
	profiler addMethodToProfile: (S2pyDummyTest >> #testABar).
	self assertAllSpyMethods: S2pyB classWithMetaclass.
	self assertAllSpyMethods: (S2pyDummyTest >> #testABar).