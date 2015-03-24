test - error handling
testEnsureUninstall

	|flag|
	flag := false.
	[(S2Profiler profile: [ 
		self assert: (S2pyA>>#foo) isSpy.
		Error signal.
		] onPackageNamed: 'Spy2-Scenario')]
		on: Error do: [ flag := true. ].
	self assert: flag.
	self deny: (S2pyB>>#foo) isSpy.