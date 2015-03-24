test - adding
testDontOverwriteMethodsAddClass
	self denyAnySpyMethods: S2pyA classWithMetaclass.
	self denyAnySpyMethods: (S2pyB >> #foo).
	(S2Instrumentator onMethods: { S2pyA >> #foo . S2pyB >> #foo }) applyOn: profiler.
	self denyAnySpyMethods: (S2pyA >> #bar).
	self assertAllSpyMethods: (S2pyA >> #foo).
	self assertAllSpyMethods: (S2pyB >> #foo).
	profiler addClassToProfile: S2pyA.
	self assertAllSpyMethods: S2pyA classWithMetaclass.
	self assertAllSpyMethods: (S2pyB >> #foo).