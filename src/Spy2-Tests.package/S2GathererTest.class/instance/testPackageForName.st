utils
testPackageForName
	| package expectedPackage |
	package := self gatherer packageForName: 'Spy2-Scenario'.
	expectedPackage := RPackage organizer packageNamed: 'Spy2-Scenario'.
	self assert: package equals: expectedPackage