running tests
runTestsForPackagesMatching: regex

	^ self profile: [ self runUnitTests ] onPackagesMatching: regex