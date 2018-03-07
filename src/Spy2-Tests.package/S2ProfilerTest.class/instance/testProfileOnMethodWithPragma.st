test - instrumentation
testProfileOnMethodWithPragma
	| profiler originalPragma |
	self assert: (Pragma allNamed: #fooPragma: in: S2pyA) size equals: 1.
	originalPragma := Pragma allNamed: #fooPragma: in: S2pyA.
	profiler := S2Profiler profile: [ self assert: (Pragma allNamed: #fooPragma: in: S2pyA) equals: originalPragma ] onMethod: S2pyA >> #foo