*Spy2-Hapao-Visualization
exportHTMLVisualization
	|view|
	view := RTView new @ RTDraggableView.
	self visualizeOn: view.
	RTHTML5Exporter new export: view