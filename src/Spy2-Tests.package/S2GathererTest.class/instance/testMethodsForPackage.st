utils
testMethodsForPackage
	| methods expectedMethods |
	methods := (self gatherer 
		methodsForPackage: (RPackage organizer packageNamed: 'Spy2-Scenario')) asSet.
	expectedMethods := 
		(Set 
			with: S2pyA >> #bar
			with: S2pyA >> #foo 
			with: S2pyA class >> #buildA
			with: S2pyB >> #bar
			with: S2pyB >> #foo
			with: S2pyB class >> #buildB) , 
		(Set
			with: S2pyDummyTest >> #testABar
			with: S2pyDummyTest >> #testBBar
			with: S2pyDummyTest >> #testAFoo
			with: S2pyDummyTest >> #testBFoo).
	self assert: methods equals: expectedMethods.