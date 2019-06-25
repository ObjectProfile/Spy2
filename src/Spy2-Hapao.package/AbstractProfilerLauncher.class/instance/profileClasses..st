public - profiling
profileClasses: classToMeasureCoverage
	"Assess the coverage of the class provided as argument"
	"classToMeasureCoverage is a plain Pharo class"
	| referencingUnitTest |
	lastProfiledClasses := classToMeasureCoverage.
	referencingUnitTest := classToMeasureCoverage select: [ :c | c inheritsFrom: TestCase ].
	referencingUnitTest 
		ifEmpty: [ self inform: 'No unit test reference for this|these class|es'. ^ self ].
	HapaoRoassal3 open: (Hapao2 runTestsForClasses: classToMeasureCoverage)