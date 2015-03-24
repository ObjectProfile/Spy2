test - remove
testDontOverwriteClassesRemoveClass
	self denyAnySpyMethods: S2pyA classWithMetaclass.
	self denyAnySpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: S2pyDummyTest classWithMetaclass.
	(S2Instrumentator onClasses: { S2pyA . S2pyB }) applyOn: profiler.
	self assertAllSpyMethods: S2pyA classWithMetaclass.
	self assertAllSpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: S2pyDummyTest classWithMetaclass.
	profiler removeClassesFromProfile: { S2pyA . S2pyDummyTest }.
	self denyAnySpyMethods: S2pyA classWithMetaclass.
	self assertAllSpyMethods: S2pyB classWithMetaclass.
	self denyAnySpyMethods: S2pyDummyTest classWithMetaclass.