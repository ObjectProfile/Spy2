public
profileClasses: classToMeasureCoverage
	"Assess the coverage of the class provided as argument"
	"classToMeasureCoverage is a plain Pharo class"
	| referencingUnitTest |
	lastProfiledClasses := classToMeasureCoverage.
	referencingUnitTest := classToMeasureCoverage select: [ :c | c inheritsFrom: TestCase ].
	referencingUnitTest 
		ifEmpty: [ self inform: 'No unit test reference ', classToMeasureCoverage name. ^ self ].
	(Hapao2 runTestsForClasses: classToMeasureCoverage) inspect