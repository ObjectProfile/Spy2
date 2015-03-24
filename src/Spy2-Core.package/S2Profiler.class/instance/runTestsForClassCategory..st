running tests
runTestsForClassCategory: category

	^ self profile: [ self runUnitTests ] onClassCategory: category