running tests
runTestsForPackage: package
	self assert: [ package class == RPackage ] description: 'Provide a RPackage as argument'.
	^ self profile: [ self runUnitTests ] onPackage: package