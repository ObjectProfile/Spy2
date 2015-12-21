private - running tests
runTest: test withResults: results
	super runTest: test withResults: results.
	currentTest := (self getSpy: test class >> test selector)