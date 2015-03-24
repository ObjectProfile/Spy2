testing
hasIncomingCalls
	incomingCalls ifNil: [ ^ false ].
	^ self incomingCalls size > 0 