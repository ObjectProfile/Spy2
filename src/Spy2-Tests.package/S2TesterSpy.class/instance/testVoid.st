tests
testVoid

	profiler profile: [ 
		self assert: S2pyA new foo equals: '#A>>foo#'.
		self assert: S2pyB new foo equals: '#A>>foo##B>>foo#' ] 
		onPackageNamed: 'Spy2-Scenario'