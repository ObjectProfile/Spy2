examples
example01
	"
	self new example01
	"
	^ PMMoveMain new
		profilePackages: { 'Roassal2' };
		getRecommandationsFor: RTShape withAllSubclasses;
		yourself