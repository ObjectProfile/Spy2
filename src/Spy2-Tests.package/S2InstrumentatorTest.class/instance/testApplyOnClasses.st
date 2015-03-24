test - generic api
testApplyOnClasses
	self denyAnySpyMethods: ({S2pyB . S2pyDummyTest} flatCollect: #classWithMetaclass).
	self denyAnySpyMethods: S2pyA classWithMetaclass.
	(S2Instrumentator onClasses: {S2pyB . S2pyDummyTest}) applyOn: profiler.
	self denyAnySpyMethods: S2pyA classWithMetaclass.
	self assertAllSpyMethods: ({S2pyB . S2pyDummyTest} flatCollect: #classWithMetaclass)