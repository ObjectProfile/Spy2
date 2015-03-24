test - instrumentation
testInstrument

	self deny: (S2pyA>>#foo) isSpy.
	(S2Profiler profile: [ self assert: (S2pyA>>#foo) isSpy ] onPackageNamed: 'Spy2-Scenario').
	self deny: (S2pyB>>#foo) isSpy.