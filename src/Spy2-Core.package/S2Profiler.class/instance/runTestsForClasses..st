running tests
runTestsForClasses: classes

	^ self profile: [ self runUnitTests ] onClasses: classes