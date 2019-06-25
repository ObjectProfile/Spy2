public
profileClassWithSuperclasses
	"
	Ask the user to choose a recently-modified class and assess its coverage.
	
	self new profileClassWithSuperclasses
	"
	| classToMeasureCoverage classesToRun |
	
	classToMeasureCoverage := self chooseClass.
	classToMeasureCoverage ifNil: [ ^ self ].
	classesToRun := Set new.
	classesToRun addAll: (classToMeasureCoverage withAllSuperclasses copyFrom: 1 to: (classToMeasureCoverage withAllSuperclasses indexOf: Object) - 1).
	classesToRun copy do: [ :c | classesToRun addAll: c unitTestsReferencingMe ].

	self profileClasses: classesToRun
