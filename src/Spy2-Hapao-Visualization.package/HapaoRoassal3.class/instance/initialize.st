initialization
initialize
	super initialize.
	mainView := RSView new.
	lightInteraction := RSLightShapesView new.
	self initializeShape.