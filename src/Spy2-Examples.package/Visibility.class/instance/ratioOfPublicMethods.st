visualization
ratioOfPublicMethods
	^ ((self allExecutedMethods select: #isPublic) size / self allExecutedMethods size) asFloat round: 2