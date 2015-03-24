tests
testChangeLiteral
	| plugin |
	plugin := S2ReplaceLiteralsPlugin on: profiler usingTranslations: self translations.
	self deny: (S2pyA >> #foo literalAt: 1) = #foo.
	self deny: (S2pyA >> #bar literalAt: 1) = S2pyB.
	self assert: (S2pyA >> #foo literalAt: 2) = #foo.
	[ 	plugin installOn: S2pyA >> #foo. 
		plugin installOn: S2pyA >> #bar.
		self assert: (S2pyA >> #foo literalAt: 1) = #foo.
		self assert: (S2pyA >> #bar literalAt: 1) = S2pyB.
		self assert: (S2pyA >> #foo literalAt: 2) = #foo.
	] ensure: [ 
		plugin uninstallFrom: S2pyA >> #foo.
		plugin uninstallFrom: S2pyA >> #bar ].
	self deny: (S2pyA >> #foo literalAt: 1) = #foo.
	self deny: (S2pyA >> #bar literalAt: 1) = S2pyB.
	self assert: (S2pyA >> #foo literalAt: 2) = #foo.
	