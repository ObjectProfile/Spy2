private - running tests
runUnitTests
	| ind tests results |
	ind := 0.
	results := TestResult new.
	tests := self collectTests.
	'Running tests'
		displayProgressFrom: 0
		to: tests size
		during:
			[ :bar | 
			tests
				do:
					[ :test | 
					self runTest: test withResults: results.
					ind := ind + 1.
					bar value: ind ] ].
	unitTestResult := results