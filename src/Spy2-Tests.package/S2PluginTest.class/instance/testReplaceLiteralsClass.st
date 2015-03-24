tests
testReplaceLiteralsClass

	| dict |
	dict := Dictionary new.
	profiler methodPlugins: { S2ReplaceLiteralsPlugin on: profiler usingTranslations: { S2pyA asGlobal -> #ThisWasS2pyA}}.
	self assert: (S2LiteralStub >> #foo literalAt: 1) = S2pyA asGlobal.
	profiler 
		profile: [ self assert: ((S2LiteralStub >> #foo) originalMethod literalAt: 1) = #ThisWasS2pyA. ] 
		onMethod: S2LiteralStub >> #foo.
	self assert: (S2LiteralStub >> #foo literalAt: 1) = S2pyA asGlobal.