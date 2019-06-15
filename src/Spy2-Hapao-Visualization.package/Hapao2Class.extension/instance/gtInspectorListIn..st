*Spy2-Hapao-Visualization
gtInspectorListIn: composite
	"<gtInspectorPresentationOrder: -5>
	composite roassal2
		title: 'List';
		initializeView: [ | v |
			v := RTView new.
			v @ RTDraggableView.
			self visualizeAsListOn: v.
			v ]"
		