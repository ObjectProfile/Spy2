hooks
runTest: test withResults: results
	currentTestMethod := test class >> test selector.
	super runTest: test withResults: results.
	currentTestMethod := nil