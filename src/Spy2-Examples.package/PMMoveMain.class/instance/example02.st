examples
example02
	"
	self new example02
	"
	^ PMMoveMain new
		profilePackages: { 'Roassal2' };
		getRecommandationsFor: RTBuilder withAllSubclasses;
		yourself