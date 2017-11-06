visualization
visualizeDistributionOn: view

	"a TypeAndNN"
	| g d lb |
	g := RTGrapher new.
	g view: view.
	d := RTData new.
	d noDot; connectColor: Color blue.
	d points: ((self allMethods select: #isExecuted) reverseSortedAs: #numberOfDifferentReturnTypes).
	d y: #numberOfDifferentReturnTypes.
	d yLog.
	d xLog.
	g add: d.
	g maxX: 2000.
	g axisY noDecimal; title: 'Number of different return types (log)'.
	g axisX noDecimal; title: 'Number of methods (log)'.
	g build.

	lb := RTLegendBuilder new.
	lb view: g view.
	lb onDemand.
	lb addText: 'Distribution of the number of different return values'.
	lb build.
