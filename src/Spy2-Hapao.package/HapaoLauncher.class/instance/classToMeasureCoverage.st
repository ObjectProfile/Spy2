utilities
classToMeasureCoverage
	| classNameToMeasureCoverage classes index |
	classNameToMeasureCoverage := self request.
	classNameToMeasureCoverage ifNil: [ ^ nil ].
	classNameToMeasureCoverage := classNameToMeasureCoverage trimBoth.
	classes := Smalltalk globals allClasses 
		select: [ :c | classNameToMeasureCoverage match: c name ].
	classes ifEmpty: [ ^ nil ].
	index := 0.
	classes size > 1 ifTrue: [ 
		index := UIManager default chooseFrom: classes.
		index = 0 ifTrue: [ ^ nil ] ].
	classes size = 1 ifTrue: [ index := 1 ].
	^ classes at: index.
	
	
	