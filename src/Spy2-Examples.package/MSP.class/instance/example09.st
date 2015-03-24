examples
example09

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example09
	"
	^ (MSP profile: [ ((MoosePharoImporterTask new
importerClass: SmalltalkImporter;
addClasses: (MSP new packageForName: 'Roassal2') classes;
run) allClasses) ] onPackagesMatchingExpresions: {'Moose*' . 'Famix*' . 'Petit*' . 'Fame*' }  ) inspect