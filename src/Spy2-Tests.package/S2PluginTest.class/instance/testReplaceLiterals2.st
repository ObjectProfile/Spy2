tests
testReplaceLiterals2

	| dict |
	dict := Dictionary new.
	profiler methodPlugins: { S2ReplaceLiteralsPlugin on: profiler usingTranslations: self translations}.
	self deny: (S2pyA >> #foo literalAt: 1) = #foo.
	profiler 
		profile: [ self assert: ((S2pyA >> #foo) originalMethod literalAt: 1) = #foo. ] 
		onMethods: { S2pyA >> #foo . S2pyA >> #bar }.
	self deny: (S2pyA >> #foo literalAt: 1) = #foo.