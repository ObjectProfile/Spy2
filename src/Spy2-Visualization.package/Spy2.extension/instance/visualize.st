*Spy2-Visualization-Visualization
visualize 
	| view |
	view := RTView new @ RTDraggableView.
	self initializeView: view.
	self visualizeOn: view.
	^ view open