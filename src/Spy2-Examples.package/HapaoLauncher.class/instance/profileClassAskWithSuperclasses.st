public
profileClassAskWithSuperclasses
	"
	self new profileClassAskWithSuperclasses
	"

	| classNameToMeasureCoverage classToMeasureCoverage classes index classesToRun |
	classNameToMeasureCoverage := UIManager default request: 'Enter a pattern of a class (e.g., RTView, *View*)' initialAnswer: 'RTView' title: 'Enter the name of a class to measure the coverage'.
	classNameToMeasureCoverage ifNil: [ ^ nil ].
	classNameToMeasureCoverage := classNameToMeasureCoverage trimBoth.
	classes := Smalltalk allClasses select: [ :c | classNameToMeasureCoverage match: c name ].
	classes size = 0 ifTrue: [ ^ self ].
	classes size > 1 ifTrue: [ 
		index := UIManager default chooseFrom: classes.
		index = 0 ifTrue: [ ^ self ].
		classToMeasureCoverage := classes at: index.
		].
	
	classes size = 1 ifTrue: 
		[ classToMeasureCoverage := classes first ].

	classesToRun := Set new.
	classesToRun addAll: (classToMeasureCoverage withAllSuperclasses copyFrom: 1 to: (classToMeasureCoverage withAllSuperclasses indexOf: Object) - 1).
	classesToRun copy do: [ :c | classesToRun addAll: c unitTestsReferencingMe ].
	
	self profileClasses: classesToRun
