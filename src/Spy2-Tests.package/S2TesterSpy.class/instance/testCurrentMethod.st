tests - counting
testCurrentMethod

	| methodList |
	methodList := OrderedCollection new.
	profiler beforeRunBlock: [:selector :arguments :receiver :methodSpy | 
		methodList add: methodSpy currentMethod selector ].
	profiler profile: [ S2pyDummyTest new testABar ] onPackageNamed: 'Spy2-Scenario'.
	self assert: methodList asArray equals: #( #testABar #bar)