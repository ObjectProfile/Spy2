examples
example08
	"
	self new example08
	"
	| classes |
	classes := (RPackageOrganizer default packageNamed: 'Compression') classes,
					(RPackageOrganizer default packageNamed: 'CompressionTests') classes.
	^ PMMoveMain new
		runTestsForPackagesMatching: 'Compression*';
		getRecommandationsFor: classes;
		yourself