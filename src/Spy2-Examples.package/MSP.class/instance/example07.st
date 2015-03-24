examples
example07

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example07
	"
	^ (MSP profile: [ RTMondrianExample new exampleClasses ] onPackagesMatching: 'Roassal2*' ) inspect