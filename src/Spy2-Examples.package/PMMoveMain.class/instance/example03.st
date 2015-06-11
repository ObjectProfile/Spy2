examples
example03
	"
	self new example03
	"
	| classes |
	classes := Object withAllSubclasses select: 
								[ :c | c category beginsWith: 'Roassal2-Builder-Grapher' ].
	^ PMMoveMain new
		profilePackages: { 'Roassal2' . 'Trachel'};
		getRecommandationsFor: classes;
		yourself