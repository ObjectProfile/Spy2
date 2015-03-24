running tests
runTestsForPackage: package

	^ self profile: [ self runUnitTests ] onPackage: package