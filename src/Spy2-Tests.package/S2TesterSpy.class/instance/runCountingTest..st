tests - counting
runCountingTest: dict
	profiler
		profile: [ 
			self assert: S2pyA new foo equals: '#A>>foo#'.
			self assert: S2pyB new foo equals: '#A>>foo##B>>foo#' ]
		onPackageNamed: 'Spy2-Scenario'.
	self assert: (dict at: profiler >> #S2pyA >> #foo) = 2.
	self assert: (dict at: profiler >> #S2pyB >> #foo) = 1