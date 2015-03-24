examples
example03

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example03  
	"
	^ (MSP profile: [ RTMapExample new exampleWorldPopulation ] onPackagesNamed: #('Roassal2' 'Trachel') ) inspect