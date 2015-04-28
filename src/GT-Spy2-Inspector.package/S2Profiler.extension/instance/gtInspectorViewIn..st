*GT-Spy2-Inspector
gtInspectorViewIn: composite
	<gtInspectorPresentationOrder: 10>
	composite roassal2
		title: 'View';
		initializeView: [ | v |
			v := RTView new.
			v @ RTDraggableView.
			self visualizeOn: v.
			v ]
		