visualization
visualize

	| view |
	view := RTView new.
	view @ RTDraggableView.
	self visualizeOn: view.
	view open
