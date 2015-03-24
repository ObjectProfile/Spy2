examples
example02

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example02
	"
	^ (DF profile: [ RTMapExample new exampleCity01 ] onPackagesNamed: #('Roassal2' 'Trachel') ) visualize