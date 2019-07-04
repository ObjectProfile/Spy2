public - ask
profileClassAsk
	"
	self new profileClassAsk
	"

	| classToMeasureCoverage |
	classToMeasureCoverage := self classToMeasureCoverage.
	classToMeasureCoverage ifNil: [ ^ self ].
	self profileClass: classToMeasureCoverage