tests
testSpyContext

	| context |
	profiler runWithInBlock: [ :selector :arguments :receiver :methodSpy | 
			methodSpy originalMethod methodClass = S2pyA ifTrue: [
				Smalltalk garbageCollect.
				context := methodSpy spyContext.
				self assert: context spyMethod equals: profiler >> #S2pyB >> #foo.
				self assert: context sender spyMethod equals: profiler >> #S2pyA >> #foo.
				self assert: context sender sender equals: nil ] ].
	profiler profile: [ S2pyB new foo ] onPackageNamed: 'Spy2-Scenario'