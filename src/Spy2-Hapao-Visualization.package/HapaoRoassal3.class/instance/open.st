visualization
open
	mainView := RSView new.
	self createElementsAndEdges.
	self visualizeLegend.
	self addMenuControl.
	self elementsToShow: 'Classes'.
	mainView @RSControlsView.
	mainView addInteraction: lightInteraction .
	mainView open setLabel: 'Hapao Visualization'.