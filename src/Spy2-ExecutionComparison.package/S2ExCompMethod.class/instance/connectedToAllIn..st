as yet unclassified
connectedToAllIn: commonMethods
	^ commonMethods select: [ :cm |
		self beforeMethod outgoingCalls includes: cm beforeMethod ]