visualization
open
	mainView := RSView new.
	mainView color: Smalltalk ui theme backgroundColor.
	self createElementsAndEdges.
	self visualizeLegend.
	self addMenuControl.
	mainView 
		when: TSExtentChangedEvent 
		do: [ self relayout ].
	self elementsToShow: 'Classes'.
	
	mainView @ RSControlsView.
	mainView open setLabel: 'Hapao Visualization'.
	
