example
example01
	"
	self new example01
	"
	^ (Type
			profile: [  RTRoassalExample new exampleLabelledEncapsulating ]
			onPackagesNamed: { 'Roassal2' . 'Trachel' }) inspect