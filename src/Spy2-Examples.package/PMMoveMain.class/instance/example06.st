examples
example06
	"
	self new example06
	"
	| classes |
	classes := (RPackageOrganizer default packageNamed: 'AST-Core') classes,
					(RPackageOrganizer default packageNamed: 'AST-Tests-Core') classes.
	^ PMMoveMain new
		runTestsForPackagesMatching: 'AST*';
		getRecommandationsFor: classes;
		yourself