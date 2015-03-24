tests - counting
testPointCreation
	profiler profilerPlugins: { S2PointNewPlugin on: profiler }.
	profiler addBehavior: #afterPointNew: withBlock: [ :arg1 :arg2 :spyProfiler |
		1 / 0
		].
	profiler profile: [
		Halt disableHaltOnce.
		self shouldnt: [2 @ 3] raise: Exception.
		Halt enableHaltOnce.
		self should: [ 1 @ 2] raise: Exception.
		self shouldnt: [4 @ 3] raise: Exception.
		self deny: Halt isHaltOnceEnabled.
		 ] 
		onPackageNamed: 'Spy2-Scenario'