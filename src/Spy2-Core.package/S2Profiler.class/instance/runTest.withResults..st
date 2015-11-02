private - running tests
runTest: test withResults: results
	"This method simply run the test method using the test result.
	This method may be overriden in subclasses in case one need more logic here"
	test run: results