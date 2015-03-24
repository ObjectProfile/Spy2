examples
example10

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example10
	"
	^ (MSP profile: [ self example10Code] onPackagesNamed: #('Roassal2' 'Trachel') ) inspect