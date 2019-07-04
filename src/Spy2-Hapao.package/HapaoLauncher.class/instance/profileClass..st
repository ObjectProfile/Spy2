public - profiling
profileClass: classToMeasureCoverage
	"Assess the coverage of the class provided as argument"
	"classToMeasureCoverage is a plain Pharo class"
	| referencingUnitTest |
	referencingUnitTest := classToMeasureCoverage unitTestsReferencingMe.
	self profileClasses: referencingUnitTest, { classToMeasureCoverage }
	