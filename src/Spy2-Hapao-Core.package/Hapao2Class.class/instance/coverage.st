metric
coverage
	"Return the % of coverage of the class. This includes the metaclass"
	self allMethods size = 0 ifTrue: [ ^ 100 ].
	^ ((self allMethods select: #isCovered) size / self allMethods size) * 100 round: 2
