*Spy2-Hapao-Visualization
gtInspectorListIn: composite
	<gtInspectorPresentationOrder: 25>
	composite roassal2
		title: 'List';
		initializeView: [ | v |
			v := RTView new.
			v @ RTDraggableView.
			self visualizeAsListOn: v.
			v ]
		