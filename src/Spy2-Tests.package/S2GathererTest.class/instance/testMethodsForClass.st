utils
testMethodsForClass
	| methods expectedMethods |
	methods := (self gatherer methodsForClass: S2pyA) asSet.
	expectedMethods := Set with: S2pyA >> #bar with: S2pyA >> #foo with: S2pyA class >> #buildA.
	self assert: methods equals: expectedMethods.