test - gather
testGatherForClassCategory

	| methods |
	methods := (S2Instrumentator new gatherClassesForClassCategory: 'Spy2-Scenario') flatCollect: #methods.
	self assert: methods asSet size equals: 8.
	self 
		assert: (methods collect: #methodClass ) asSet 
		equals: (Set 
						with: S2pyA 
						with: S2pyB 
						with: S2pyDummyTest).
	self assert: (methods select: [ :m | m methodClass = S2pyA ]) size equals: 2
	