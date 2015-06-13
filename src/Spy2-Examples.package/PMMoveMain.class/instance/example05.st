examples
example05
	"
	self new example05
	"
	| classes |
	classes := (RPackageOrganizer default packageNamed: 'Arki-Reporter-Browser') classes,
					(RPackageOrganizer default packageNamed: 'Arki-Reporter-Core') classes,
					(RPackageOrganizer default packageNamed: 'Arki-Tests-Reporter') classes.
	^ PMMoveMain new
		runTestsForPackagesMatching: 'Arki*';
		getRecommandationsFor: classes;
		yourself