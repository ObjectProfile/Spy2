test - remove
testDontOverwriteClassesRemoveMethod
	self denyAnySpyMethods: S2pyA classWithMetaclass.
	self denyAnySpyMethods: S2pyB >> #foo.
	(S2Instrumentator onClasses: { S2pyA }) applyOn: profiler.
	self assertAllSpyMethods: S2pyA classWithMetaclass.
	self denyAnySpyMethods: S2pyB >> #foo.
	profiler removeMethodsFromProfile: { S2pyA >> #bar . S2pyB >> #foo}.
	self assertAllSpyMethods: S2pyA >> #foo.
	self assertAllSpyMethods: S2pyA class >> #buildA.
	self denyAnySpyMethods: S2pyA >> #bar.
	self denyAnySpyMethods: S2pyB >> #foo.