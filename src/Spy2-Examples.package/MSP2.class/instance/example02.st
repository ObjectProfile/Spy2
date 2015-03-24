examples
example02
	"
	self new example02
	"
	^ self 
			keepTrackOfInstancesOf: { String . Point };
			profile: [ RTMapExample new exampleWorldPopulation ] onPackagesNamed: #('Roassal2' 'Trachel');
			inspect