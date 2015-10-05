public
profileClass
	"
	Ask the user to choose a recently-modified class and assess its coverage.
	
	self new profileClass
	"

	| index clss classToMeasureCoverage |
	clss := self lastClasses.
	index := UIManager default chooseFrom: clss.
	index = 0
		ifTrue: [ ^ self ].
	classToMeasureCoverage := clss at: index.
	self profileClass: classToMeasureCoverage