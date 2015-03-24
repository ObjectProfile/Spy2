test - remove
testBasicRemoveClassToClasses
	self denyAnySpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: S2pyDummyTest classWithMetaclass.
	(S2Instrumentator onClasses: {S2pyB.S2pyDummyTest}) applyOn: profiler.
	self assertAllSpyMethods: S2pyB classWithMetaclass.
	self assertAllSpyMethods: S2pyDummyTest classWithMetaclass.
	profiler removeClassFromProfile: S2pyDummyTest.
	self assertAllSpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: S2pyDummyTest classWithMetaclass.