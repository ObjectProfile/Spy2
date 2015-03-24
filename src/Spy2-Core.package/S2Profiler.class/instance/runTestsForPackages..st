running tests
runTestsForPackages: packageCollection

	^ self profile: [ self runUnitTests ] onPackages: packageCollection