examples
example02
	"
	self new example02
	"
	^ (MSP1 profile: [ RTGeneralExample new numbers ] onPackagesNamed: {'Roassal2' . 'Trachel'} ) listMostCreatedObjects inspect