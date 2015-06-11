testing
isUnitTest
	"Return true if the class behind the spy class is a unit test"
	^ self theClass inheritsFrom: TestCase