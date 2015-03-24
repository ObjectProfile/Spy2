examples
example06

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example06
	"
	^ (MSP profile: [  Nautilus open ] onPackagesMatching: 'Nautilu*' ) inspect