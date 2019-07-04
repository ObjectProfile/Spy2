public - ask
profileClassAskWithSuperclasses
	"
	self new profileClassAskWithSuperclasses
	"

	| classToMeasureCoverage classesToRun |
	
	classToMeasureCoverage := self classToMeasureCoverage.
	classToMeasureCoverage ifNil: [ ^ self ].
	classesToRun := Set new.
	classesToRun addAll: (classToMeasureCoverage withAllSuperclasses 
		copyFrom: 1 
		to: (classToMeasureCoverage withAllSuperclasses indexOf: Object) - 1).
	self fetchWithUnitTests: classesToRun.
	
	self profileClasses: classesToRun
