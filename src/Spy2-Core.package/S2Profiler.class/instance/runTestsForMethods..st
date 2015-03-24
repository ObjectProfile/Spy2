running tests
runTestsForMethods: methods

	^ self profile: [ self runUnitTests ] onMethods: methods