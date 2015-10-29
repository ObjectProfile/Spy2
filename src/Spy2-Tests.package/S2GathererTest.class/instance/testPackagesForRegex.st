utils
testPackagesForRegex
	| package expectedPackage |
	package := (self gatherer packagesForRegex: 'Spy2-Scenar*') asArray.
	expectedPackage := { RPackage organizer packageNamed: 'Spy2-Scenario' }.
	self assert: package equals: expectedPackage