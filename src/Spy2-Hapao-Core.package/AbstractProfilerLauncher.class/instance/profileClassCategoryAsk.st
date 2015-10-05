public
profileClassCategoryAsk
	"
	self new profileClassCategoryAsk
	
	
	"

	| categoryToMeasureCoverage  classes |
	categoryToMeasureCoverage := UIManager default request: 'Enter a pattern of a class category (e.g., Roassal2-Core, *View*)' initialAnswer: 'Roassal2-Core' title: 'Enter the name of a class category to measure the coverage'.
	categoryToMeasureCoverage ifNil: [ ^ nil ].
	
	classes := self classesOfCategory: categoryToMeasureCoverage.
	classes size = 0 ifTrue: [ ^ self ].
	
	self profileClasses: classes