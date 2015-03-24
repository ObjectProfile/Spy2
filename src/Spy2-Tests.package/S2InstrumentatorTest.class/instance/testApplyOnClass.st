test - generic api
testApplyOnClass
	self denyAnySpyMethods: S2pyB classWithMetaclass.
	(S2Instrumentator onClass: S2pyB) applyOn: profiler.
	self assertAllSpyMethods: S2pyB classWithMetaclass