public - running tests
runTestsForPackage: package
	self assert: [ package class == RPackage ] description: 'Provide a RPackage as argument'.
	^ self new runTestsForPackage: package