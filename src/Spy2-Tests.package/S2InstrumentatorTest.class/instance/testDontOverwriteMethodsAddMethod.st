test - adding
testDontOverwriteMethodsAddMethod
	self denyAnySpyMethods: S2pyA >> #foo.
	self denyAnySpyMethods: S2pyA >> #bar.
	self denyAnySpyMethods: S2pyB >> #foo.
	(S2Instrumentator onMethods: { S2pyA >> #foo . S2pyB >> #foo }) applyOn: profiler.
	self denyAnySpyMethods: (S2pyA >> #bar).
	self assertAllSpyMethods: (S2pyA >> #foo).
	self assertAllSpyMethods: (S2pyB >> #foo).
	profiler addMethodsToProfile: { S2pyA >> #foo . S2pyA >> #bar }.
	self assertAllSpyMethods: S2pyA >> #foo.
	self assertAllSpyMethods: S2pyA >> #bar.
	self assertAllSpyMethods: S2pyB >> #foo.