test - instrumentation
testBehavior

	S2Profiler profile: [ 
		self assert: S2pyA new foo equals: '#A>>foo#'.
		self assert: S2pyB new foo equals: '#A>>foo##B>>foo#' ] 
		onClassCategory: 'Spy2-Scenario'