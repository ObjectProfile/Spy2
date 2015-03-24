test - basic
testStop
	self deny: (S2pyA >> #foo) isSpy.
	(S2Instrumentator new
		methods: { S2pyA >> #foo }
		classes: #()) 
			applyOn: profiler.
	self assert: (S2pyA >> #foo) isSpy.
	S2VoidInstrumentator new applyOn: profiler.
	self deny: (S2pyA >> #foo) isSpy.