code generation
generate: profilerName
	"Public method to create a new profiler"
	
	"
	self generate: 'PMove' category: 'Spy2-Examples-PMove'
	"
	
	^ self generate: profilerName category: profilerName asString