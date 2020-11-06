visualization
visualizeBarChart: canvas
	| chart classes points names instances kbytes graph plot extent rectanglePackLayout barcharts |
	graph := canvas nodes copy.
	classes := (self profiler counting associations sortedAs: #value) reverse collect: #key.
	extent := 300 @ (classes size * 15).
	names := classes collect: #name.
	points := classes collect: [ :cls | self numberOfInstancesOfClass: cls ].
	instances := RSComposite new.
	chart := RSChart new.
	chart padding: 5@0.
	chart container: instances.
	chart extent: extent.
	chart title: '# Instances'.
	plot := chart barWidths: points.
	chart addDecoration: (RSHorizontalTick new integer; useDiagonalLabel).
	chart addDecoration: (RSVerticalTick new fromNames: names).
	chart xLog.
	chart build.
	plot bars do: #popup.
	instances adjustToChildren.
	canvas add: instances.
	
	points := classes collect: [ :cls | self numberOfKbUsedByClass: cls ].
	kbytes  := RSComposite new.
	chart := RSChart new.
	chart padding: 5@0.
	chart container: kbytes.
	chart extent: extent.
	
	chart title: 'Memory consumption in Kbytes'.
	plot := chart barWidths: points.
	chart addDecoration: (RSHorizontalTick new integer; useDiagonalLabel).
	chart xLog.
	chart build.
	plot bars @ (RSPopup text: #asFloat).
	kbytes adjustToChildren.
	canvas add: kbytes.
	
	barcharts := { instances. kbytes } asGroup.
	RSHorizontalLineLayout on: barcharts.
	rectanglePackLayout := RSRectanglePackLayout new
		doNotUseProgressBar;
		yourself.
	canvas when: RSExtentChangedEvent do: [
		rectanglePackLayout
			preferredAngle: canvas extent angle;
			on: { barcharts. graph }.
		canvas zoomToFit; signalUpdate.
		 ].