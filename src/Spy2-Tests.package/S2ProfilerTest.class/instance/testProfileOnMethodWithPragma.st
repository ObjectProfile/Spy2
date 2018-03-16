test - instrumentation
testProfileOnMethodWithPragma
	| profiler originalPragma |
	self assert: (Pragma allNamed: #fooPragma: in: S2pyC) size equals: 1.
	originalPragma := Pragma allNamed: #fooPragma: in: S2pyC.
	profiler := S2Profiler profile: [ self assert: (Pragma allNamed: #fooPragma: in: S2pyC) equals: originalPragma ] onMethod: S2pyC >> #foo