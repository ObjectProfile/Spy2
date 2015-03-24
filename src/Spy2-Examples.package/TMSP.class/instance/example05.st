examples
example05

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example05
	"
	^ (TMSP new
			keepTrackOfInstancesOfPackages: #( 'Famix-Core' 'PetitSmalltalk' );
		profile: [ ((MoosePharoImporterTask new
importerClass: SmalltalkImporter;
addClasses: RBLiteralNode withAllSubclasses;
run) allClasses entityNamed: RBLiteralNode mooseName) withSubclassHierarchyGroup ] onPackagesMatchingExpresions: {'Moose*' . 'Famix*' . 'Petit*' . 'Fame*' }  ) inspect