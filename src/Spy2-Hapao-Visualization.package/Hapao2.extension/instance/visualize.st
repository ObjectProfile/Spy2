*Spy2-Hapao-Visualization
visualize 
	| view |
	view := RTView new @ RTDraggableView.
	
	self visualizeOn: view.
	^ view open