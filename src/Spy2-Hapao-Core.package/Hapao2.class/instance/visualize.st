visualization
visualize 
	| view |
	view := RTView new @ RTDraggableView.
	
	self visualizeOn: view.
	^ view open