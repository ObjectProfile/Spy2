tests
testIdentityHash

	| dict |
	dict := Dictionary new.
	profiler classPlugins: { S2SpecialBehaviorPlugin identityHashPluginOn: profiler }.
	profiler addBehavior: #identityHashCallOn:value: withBlock: [ :obj :hash :prof |
		dict at: obj class put: (dict at: obj class ifAbsent: [ 0 ]) + 1 ].
	profiler 
		profile: [
			S2pyA new 
				identityHash; 
				identityHash. 
			S2pyB new identityHash.
			S2pyA new identityHash] 
		onPackageNamed: 'Spy2-Scenario'.
	self assert: (dict at: S2pyA )equals: 3.
	self assert: (dict at: S2pyB )equals: 1