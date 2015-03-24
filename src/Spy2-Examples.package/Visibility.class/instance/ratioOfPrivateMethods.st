visualization
ratioOfPrivateMethods
	^ ((self allExecutedMethods select: #isPrivate) size / self allExecutedMethods size) asFloat round: 2