tests
testWithAllSuperclassesInPackages
	self 
		assert: S2Profiler withAllSuperclassesInPackage asSet
		equals: { S2Profiler . Spy2 } asSet