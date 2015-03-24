test - gather
testGatherForClasses
	| methods |
	methods := S2Instrumentator new gatherMethodsForClasses: {S2pyA . S2pyDummyTest}.
	self assert: methods asSet size equals: 7.
	self 
		assert: (methods collect: #methodClass ) asSet 
		equals: (Set 
						with: S2pyA 
						with: S2pyDummyTest
						with: S2pyA class).
	self assert: (methods select: [ :m | m methodClass = S2pyA ]) size equals: 2