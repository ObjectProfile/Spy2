examples
example14Flashback
	"
	self new example14Flashback
	"
	^ PMMoveMain new
		profilePackages: { 'Flashback-Decompiler' . 'Flashback-Decompiler-Tests' };
		getRecommandationsFor: 
			(RPackageOrganizer default packageNamed: 'Flashback-Decompiler') classes,
			(RPackageOrganizer default packageNamed: 'Flashback-Decompiler-Tests') classes;
		yourself
		