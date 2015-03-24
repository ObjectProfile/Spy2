visualization
ratioOfDefaultMethods
	^ ((self allExecutedMethods select: #isDefault) size / self allExecutedMethods size) asFloat round: 2