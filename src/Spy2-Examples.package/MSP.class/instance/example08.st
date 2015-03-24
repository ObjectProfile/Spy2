examples
example08

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example08
	"
	^ (MSP profile: [ ((MoosePharoImporterTask new
importerClass: SmalltalkImporter;
addClasses: RBLiteralNode withAllSubclasses;
run) allClasses entityNamed: RBLiteralNode mooseName) withSubclassHierarchyGroup ] onPackagesMatchingExpresions: {'Moose*' . 'Famix*' . 'Petit*' . 'Fame*' }  ) inspect