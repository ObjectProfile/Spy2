test - instrumentation
testInstrumentMeta

	self deny: (S2pyA class>>#buildA) isSpy.
	S2Profiler 
		profile: [self assert: (S2pyA class >> #buildA) isSpy] onPackageNamed: 'Spy2-Scenario'.
	self deny: (S2pyA class>>#buildA) isSpy.