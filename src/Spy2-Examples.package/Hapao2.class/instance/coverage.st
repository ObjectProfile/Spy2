metric
coverage
	"Return the % of coverage of the class. This includes the metaclass"
	self allNonTestMethods size = 0 ifTrue: [ ^ 0 ].
	
	^ ((self allNonTestMethods select: #isCovered) size / self allNonTestMethods size) * 100 round: 2
