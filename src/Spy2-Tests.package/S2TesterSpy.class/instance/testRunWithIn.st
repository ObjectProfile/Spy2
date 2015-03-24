tests
testRunWithIn

	| cond |
	cond := false.
	profiler runWithInBlock: [:selector :arguments :receiver :methodSpy | 
		|value|
		value := methodSpy superRun: selector with: arguments in: receiver.
		value = '#A>>foo#' ifTrue: [ cond := true ].
		value ].
	profiler profile: [ 
		self assert: S2pyA new foo equals: '#A>>foo#'.
		self assert: S2pyB new foo equals: '#A>>foo##B>>foo#' ] 
		onPackageNamed: 'Spy2-Scenario'.
	self assert: cond