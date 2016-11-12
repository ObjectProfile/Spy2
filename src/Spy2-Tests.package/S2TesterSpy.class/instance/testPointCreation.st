tests - counting
testPointCreation
	profiler profilerPlugins: { S2PointNewPlugin on: profiler }.
	profiler addBehavior: #afterPointNew: withBlock: [ :arg1 :arg2 :spyProfiler |
		1 / 0
		].
	profiler profile: [
		Spy2 disableDebugSpy.
		self shouldnt: [2 @ 3] raise: Exception.
		Spy2 enableDebugSpy.
		self should: [ 1 @ 2] raise: Exception.
		self shouldnt: [4 @ 3] raise: Exception.
		self deny: Spy2 isDebugSpyEnabled.
		 ] 
		onPackageNamed: 'Spy2-Scenario'