accessing - computed
allNonTestMethods
	"Return all the methods that are not a test"
	^ self allMethods reject: #isInTestCase