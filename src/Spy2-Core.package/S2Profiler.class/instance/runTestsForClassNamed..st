running tests
runTestsForClassNamed: clsName

	^ self profile: [ self runUnitTests ] onClassNamed: clsName