examples
example02
	"
	self new example02
	"

	"| classes classes2 |
	classes := (RPackageOrganizer default packageNamed: 'Roassal2') definedClasses reject: #isTestCase.
	
	classes2 := #().
	^ TSurgeon new 
			runTestsForClasses: classes, classes2, { RTElementTest . RTLayoutTest }"