code generation
generate: profilerName
	"Public method to create a new profiler"
	
	"
	self generate: 'Type' category: 'S2py-Type'
	"
	
	^ self generate: profilerName category: profilerName asString