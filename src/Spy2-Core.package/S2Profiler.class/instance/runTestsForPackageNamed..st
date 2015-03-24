running tests
runTestsForPackageNamed: pacakgeName

	^ self profile: [ self runUnitTests ] onPackageNamed: pacakgeName