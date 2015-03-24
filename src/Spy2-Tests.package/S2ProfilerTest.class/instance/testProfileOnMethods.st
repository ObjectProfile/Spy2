test - instrumentation
testProfileOnMethods

	self deny: (S2pyA>>#foo) isSpy.
	self deny: (S2pyB>>#bar) isSpy.
	self deny: (S2pyA>>#foo) isSpy.
	self deny: (S2pyB>>#bar) isSpy.
	S2Profiler 
		profile: [
			self assert: (S2pyA>>#foo) isSpy.
			self deny: (S2pyB>>#bar) isSpy.
			self assert: (S2pyA>>#foo) isSpy.
			self deny: (S2pyB>>#bar) isSpy.] 
		onMethods: {S2pyA >> #foo . S2pyB >> #foo}.
	self deny: (S2pyA>>#foo) isSpy.
	self deny: (S2pyB>>#bar) isSpy.
	self deny: (S2pyA>>#foo) isSpy.
	self deny: (S2pyB>>#bar) isSpy.