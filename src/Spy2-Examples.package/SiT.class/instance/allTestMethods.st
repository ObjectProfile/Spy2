as yet unclassified
allTestMethods
	"Return all the methods that are not a test"
	^ self allMethods select: [ : m | m isInTestCase and: [ m selector beginsWith: 'test' ] ]