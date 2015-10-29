utils
testClassesForPackage
	| classes expectedClasses |
	classes := (self gatherer 
		classesForPackage: (RPackage organizer packageNamed: 'Spy2-Scenario')) asSet.
	expectedClasses := Set with: S2pyA with: S2pyB with: S2pyDummyTest.
	self assert: classes equals: expectedClasses.