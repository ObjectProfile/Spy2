visualization
gtInspectorViewvisualizeDistributionOn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Distribution';
		initializeView: [ | v |
			v := RTView new.
			v @ RTDraggableView.
			self visualizeDistributionOn: v.
			v ]
		