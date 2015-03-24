running tests
runTestsForPackagesMatchingExpressions: regexCollection

	^ self profile: [ self runUnitTests ] onPackagesMatchingExpressions: regexCollection