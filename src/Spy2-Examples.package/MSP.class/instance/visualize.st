visualization
visualize

	| canvas |
	canvas := RSCanvas new.
	canvas @ RSCanvasController.
	self visualizeOn: canvas.
	canvas open
