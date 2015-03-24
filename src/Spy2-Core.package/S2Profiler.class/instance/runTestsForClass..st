running tests
runTestsForClass: cls

	^ self profile: [ self runUnitTests ] onClass: cls