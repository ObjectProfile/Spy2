accessing - computed
allTestMethods
	"Return all the methods that are not a test"
	^ self allRelevantMethods select: [ : m | m isInTestCase and: [ m selector beginsWith: 'test' ] ]