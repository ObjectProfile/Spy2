layout
relayout 
	| hierElements |
	hierElements := current value.
	RSRectanglePackLayout new
		gap: 0.5;
		preferredAngle: mainView extent angle;
		on: hierElements.
	mainView zoomToFit; signalUpdate.
	
