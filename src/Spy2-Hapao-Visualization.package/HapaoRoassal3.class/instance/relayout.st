layout
relayout 
	RSRectanglePackLayout new
		gap: 0.5;
		preferredAngle: mainView extent angle;
		on: classesShape value;
		on: testsShape value.
	mainView zoomToFit; signalUpdate.
	
