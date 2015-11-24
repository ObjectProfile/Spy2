examples
example02
	ClassDep new 
		thresholdNumberOfMethods: 50;
		profile: [ RTPieExample new examplePieAndLegend build ] onPackageNamed: 'Roassal2'