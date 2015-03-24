test - gather
testGatherForPackage

	| methods |
	methods := (S2Instrumentator new gatherClassesForPackage: (RPackage organizer packageNamed: 'Spy2-Scenario')) flatCollect: #methods.
	self assert: methods asSet size equals: 8.
	self 
		assert: (methods collect: #methodClass ) asSet 
		equals: (Set 
						with: S2pyA 
						with: S2pyB 
						with: S2pyDummyTest).
	self assert: (methods select: [ :m | m methodClass = S2pyA ]) size equals: 2
	