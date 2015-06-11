public
profileClassAsk
	"
	self new profileClassAsk
	"

	| classNameToMeasureCoverage classToMeasureCoverage classes index |
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

	self profileClass: classToMeasureCoverage