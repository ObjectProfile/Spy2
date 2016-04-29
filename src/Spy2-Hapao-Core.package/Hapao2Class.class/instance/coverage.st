metric
coverage
	"Return the % of coverage of the class. This includes the metaclass"
	self allRelevantMethods size = 0 ifTrue: [ ^ 100 ].
	^ ((self allRelevantMethods select: #isCovered) size / self allRelevantMethods size) * 100 round: 2
