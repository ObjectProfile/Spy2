example
mooseImportTask

	 ((MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		addClasses: RBLiteralNode withAllSubclasses;
		run) allClasses entityNamed: RBLiteralNode mooseName) withSubclassHierarchyGroup 