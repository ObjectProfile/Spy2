initialization
initialize
	super initialize.
	numberOfMessages := 0.
	depFrames := OrderedCollection new.
	self createNewDepFrame.
	thresholdNumberOfMethods := 100