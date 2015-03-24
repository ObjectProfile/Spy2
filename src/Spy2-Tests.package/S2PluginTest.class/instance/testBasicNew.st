tests
testBasicNew

	| dict |
	dict := Dictionary new.
	profiler classPlugins: { S2SpecialBehaviorPlugin basicNewPluginOn: profiler }.
	profiler addBehavior: #onBasicNew: withBlock: [ :obj :prof |
		dict at: obj class put: (dict at: obj class ifAbsent: [0]) + 1
		].
	profiler 
		profile: [S2pyA new. S2pyA basicNew. S2pyB new ] 
		onPackageNamed: 'Spy2-Scenario'.
	self assert: (dict at: S2pyA )equals: 2.
	self assert: (dict at: S2pyB )equals: 1