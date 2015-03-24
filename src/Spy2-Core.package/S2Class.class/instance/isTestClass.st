testing
isTestClass
	"Return true if the real class is a test case"
	
	^ self theClass inheritsFrom: TestCase.