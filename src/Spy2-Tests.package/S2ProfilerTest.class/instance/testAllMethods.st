test - instrumentation
testAllMethods
	"All methods should include class side methods"

	| profiler |
	profiler := S2Profiler profile: [  ] onPackageNamed: 'Spy2-Scenario'.
	self assert: profiler allMethods size equals: 10.