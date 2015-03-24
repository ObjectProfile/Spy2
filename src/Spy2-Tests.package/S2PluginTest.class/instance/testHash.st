tests
testHash

	| dict |
	dict := Dictionary new.
	profiler classPlugins: { S2SpecialBehaviorPlugin hashPluginOn: profiler }.
	profiler addBehavior: #hashCallOn:value: withBlock: [ :obj :hash :prof |
		dict at: obj class put: (dict at: obj class ifAbsent: [ 0 ]) + 1 ].
	profiler 
		profile: [
			S2pyA new 
				hash; 
				hash. 
			S2pyB new hash.
			S2pyA new hash] 
		onPackageNamed: 'Spy2-Scenario'.
	self assert: (dict at: S2pyA )equals: 3.
	self assert: (dict at: S2pyB )equals: 1