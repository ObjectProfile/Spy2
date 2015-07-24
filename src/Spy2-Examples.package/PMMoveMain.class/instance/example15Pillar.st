examples
example15Pillar
	"
	self new example15Pillar
	"
	| ps psName pClasses classes |
	ps := RPackageOrganizer default packages select: [ :p | p packageName beginsWith: 'Pillar' ].
	psName := ps collect: #packageName.
	
	pClasses := ps reject: [ :p | p packageName beginsWith: 'Pillar-Test' ].
	classes := pClasses flatCollect: #definedClasses.
	
	^ PMMoveMain new
		profilePackages: psName;
		getRecommandationsFor: classes;
		yourself
		
"
Gofer new 
    smalltalkhubUser: 'Pier' project: 'Pillar';
    configuration;
    load.
(Smalltalk globals at: #ConfigurationOfPillar) load
"
		