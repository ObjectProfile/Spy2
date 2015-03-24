test - adding
testBasicAddClassToClasses
	self denyAnySpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: S2pyDummyTest classWithMetaclass.
	(S2Instrumentator onClass: S2pyB) applyOn: profiler.
	self assertAllSpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: S2pyDummyTest classWithMetaclass.
	profiler addClassToProfile: S2pyDummyTest.
	self assertAllSpyMethods: S2pyB classWithMetaclass.
	self assertAllSpyMethods: S2pyDummyTest classWithMetaclass.