accessing - computed
allNonTestMethods
	"Return all the methods that are not a test"
	^ self allRelevantMethods reject: #isInTestCase