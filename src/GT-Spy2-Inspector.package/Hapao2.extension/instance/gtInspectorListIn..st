*GT-Spy2-Inspector
gtInspectorListIn: composite
	<gtInspectorPresentationOrder: -5>
	composite roassal2
		title: 'List';
		initializeView: [ | v |
			v := RTView new.
			v @ RTDraggableView.
			self visualizeAsListOn: v.
			v ]
		