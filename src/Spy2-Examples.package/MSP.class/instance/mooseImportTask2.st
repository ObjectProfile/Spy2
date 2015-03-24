examples
mooseImportTask2

	 (MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		addClasses: Collection withAllSubclasses;
		run)