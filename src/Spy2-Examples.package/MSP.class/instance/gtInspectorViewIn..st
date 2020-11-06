inspector
gtInspectorViewIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal3
		title: 'Canvas';
		initializeCanvas: [ | c |
			c := RSCanvas new.
			c @ RSCanvasController.
			self visualizeOn: c.
			c ]
		