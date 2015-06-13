examples
example09
	"
	self new example09
	"
	| classes |
	classes := (RPackageOrganizer default packageNamed: 'Files') classes,
					(RPackageOrganizer default packageNamed: 'Files-Tests') classes.
	^ PMMoveMain new
		runTestsForPackagesMatching: 'Files*';
		getRecommandationsFor: classes;
		yourself