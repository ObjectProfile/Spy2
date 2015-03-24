running tests
runTestsForPackagesNamed: pacakgeNames

	^ self profile: [ self runUnitTests ] onPackagesNamed: pacakgeNames