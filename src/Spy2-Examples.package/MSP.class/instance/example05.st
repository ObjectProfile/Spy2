examples
example05

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example05
	"
	^ (MSP profile: [ RTRoassalExample new exampleforAddWithEdges ] onPackagesNamed: #('Roassal2' 'Trachel') ) inspect