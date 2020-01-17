layout
relayout 
	RSRectanglePackLayout new
		gap: 0.5;
		preferredAngle: mainCanvas extent angle;
		on: classesShape value;
		on: testsShape value.
	mainCanvas zoomToFit; signalUpdate.
	
