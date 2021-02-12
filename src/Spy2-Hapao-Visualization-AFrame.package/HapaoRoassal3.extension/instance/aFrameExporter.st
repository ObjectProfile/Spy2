*Spy2-Hapao-Visualization-AFrame
aFrameExporter
	| c1 canvas |
	c1 := self buildCanvas.
	c1 extent: 800@600.
	canvas := RSCanvas new.
	canvas color: c1 color.
	canvas add: c1 asShape.
	self elementsToShow: 'Tests'.
	canvas add: c1 asShape.
	RSGridLayout new gapSize: 500; on: canvas nodes.
	^ canvas aFrameExporter