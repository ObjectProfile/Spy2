utils
testClassesForClassCategory
	| classes expectedClasses |
	classes := (self gatherer 
		classesForClassCategory: 'Spy2-Scenario') asSet.
	expectedClasses := Set with: S2pyA with: S2pyB with: S2pyDummyTest.
	self assert: classes equals: expectedClasses.