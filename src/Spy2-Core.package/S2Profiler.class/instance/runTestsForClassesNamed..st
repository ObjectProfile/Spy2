running tests
runTestsForClassesNamed: clsNames

	^ self profile: [ self runUnitTests ] onClassesNamed: clsNames