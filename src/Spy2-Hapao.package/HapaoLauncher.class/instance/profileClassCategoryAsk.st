public - ask
profileClassCategoryAsk
	"
	self new profileClassCategoryAsk
		
	"
	| categoryToMeasureCoverage  classes |
	categoryToMeasureCoverage := UIManager default 
		request: 'Enter a pattern of a class category (e.g., Roassal3-Core, *View*)'
		initialAnswer: 'Roassal3-Core' 
		title: 'Enter the name of a class category to measure the coverage'.
	categoryToMeasureCoverage ifNil: [ ^ nil ].
	
	classes := self classesOfCategory: categoryToMeasureCoverage.
	classes ifEmpty: [ ^ self ].
	self fetchWithUnitTests: classes.
	self profileClasses: classes