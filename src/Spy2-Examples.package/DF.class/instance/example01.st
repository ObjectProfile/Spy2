examples
example01

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example01
	"
	^ (DF profile: [ RTMapExample new exampleWorldPopulation ] onPackagesNamed: #('Roassal2' 'Trachel') ) visualize