as yet unclassified
example01

	| p |
	p := TRA new.
	p setFilename: '/tmp/test.csv'.
	p profile: [
		 RTBoxPlotExample new exampleBoxPlot2.
		p incrRevision.
		  RTGrapherExample new exampleColoredAndInteractionLabel

		 ] onPackagesNamed: #('Roassal2' 'Trachel').
	p close.