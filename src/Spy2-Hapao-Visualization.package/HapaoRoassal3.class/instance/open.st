visualization
open
	mainCanvas := RSCanvas new.
	mainCanvas color: Smalltalk ui theme backgroundColor.
	self createElementsAndEdges.
	self visualizeLegend.
	self addMenuControl.
	mainCanvas 
		when: RSExtentChangedEvent 
		do: [ self relayout ].
	self elementsToShow: 'Classes'.
	
	mainCanvas @ RSCanvasController new noLegend.
	mainCanvas open setLabel: 'Hapao Visualization'.
	
