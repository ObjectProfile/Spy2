test - adding
testBasicAddClassToMethods
	self denyAnySpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: (S2pyDummyTest >> #testABar).
	(S2Instrumentator onMethod: (S2pyDummyTest >> #testABar)) applyOn: profiler.
	self denyAnySpyMethods: S2pyB classWithMetaclass.
	self assertAllSpyMethods: (S2pyDummyTest >> #testABar).
	profiler addClassToProfile: S2pyB.
	self assertAllSpyMethods: S2pyB classWithMetaclass.
	self assertAllSpyMethods: (S2pyDummyTest >> #testABar).