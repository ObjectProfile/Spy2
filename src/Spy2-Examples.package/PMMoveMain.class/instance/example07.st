examples
example07
	"
	self new example07
	"
	| classes |
	classes := (RPackageOrganizer default packageNamed: 'Announcements-Core') classes,
					(RPackageOrganizer default packageNamed: 'Announcements-Help') classes,
					(RPackageOrganizer default packageNamed: 'Announcements-Tests-Core') classes.
	^ PMMoveMain new
		runTestsForPackagesMatching: 'Announcements*';
		getRecommandationsFor: classes;
		yourself