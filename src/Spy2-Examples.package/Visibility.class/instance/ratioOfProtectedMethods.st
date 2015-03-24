visualization
ratioOfProtectedMethods
	^ ((self allExecutedMethods select: #isProtected) size / self allExecutedMethods size) asFloat round: 2