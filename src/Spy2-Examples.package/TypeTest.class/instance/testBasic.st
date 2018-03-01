tests
testBasic

	| run |
	run := (Type
			profile: [ S2pyB new foo; bar ]
			onPackagesNamed: { 'Spy2-Scenario' }).
			
	self assert: (run >> #S2pyB) class equals: TypeClass.
	
	self assert: (run >> #S2pyB >> #bar) hasBeenExecuted.
	self assert: (run >> #S2pyB >> #bar) signature equals: '{} -> ByteString'.	
	self assert: (run >> #S2pyB >> #bar) returnType equals: ByteString.
	"---"
	
	self deny: (run >> #S2pyA >> #bar) hasBeenExecuted.
