hooks
runTest: test withResults: results
	currentTestMethod := test class lookupSelector: test selector.
	self assert: currentTestMethod notNil.
	super runTest: test withResults: results.
	currentTestMethod := nil