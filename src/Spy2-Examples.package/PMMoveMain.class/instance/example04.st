examples
example04
	"
	self new example04
	"
	| classes |
	classes := (RPackageOrganizer default packageNamed: 'Roassal2') classes.
	^ PMMoveMain new
		profilePackages: { 'Roassal2' };
		getRecommandationsFor: classes;
		yourself