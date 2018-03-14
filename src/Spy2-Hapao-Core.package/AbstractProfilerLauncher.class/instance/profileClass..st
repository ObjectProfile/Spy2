public
profileClass: classToMeasureCoverage
	"Assess the coverage of the class provided as argument"
	"classToMeasureCoverage is a plain Pharo class"
	| referencingUnitTest |
	referencingUnitTest := classToMeasureCoverage unitTestsReferencingMe.
	referencingUnitTest 
		ifEmpty: [ self inform: 'No unit test reference ', classToMeasureCoverage name. ^ self ].
	lastProfiledClasses := referencingUnitTest, { classToMeasureCoverage }.
	(Hapao2 runTestsForClasses: lastProfiledClasses) inspect