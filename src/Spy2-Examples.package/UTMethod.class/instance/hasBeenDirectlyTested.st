testing
hasBeenDirectlyTested
	^ self incomingCalls anySatisfy: [ :m | m isTest ]