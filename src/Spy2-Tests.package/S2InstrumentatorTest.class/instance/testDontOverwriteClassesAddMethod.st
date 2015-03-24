test - adding
testDontOverwriteClassesAddMethod
	self denyAnySpyMethods: S2pyA classWithMetaclass.
	self denyAnySpyMethods: (S2pyB >> #foo).
	(S2Instrumentator onClasses: { S2pyA }) applyOn: profiler.
	self assertAllSpyMethods: S2pyA classWithMetaclass.
	self denyAnySpyMethods: (S2pyB >> #foo).
	profiler addMethodsToProfile: { S2pyA >> #foo . S2pyB >> #foo }.
	self assertAllSpyMethods: S2pyA classWithMetaclass.
	self assertAllSpyMethods: (S2pyB >> #foo).