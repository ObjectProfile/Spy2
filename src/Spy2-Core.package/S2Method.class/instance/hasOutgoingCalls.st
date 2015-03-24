testing
hasOutgoingCalls
	outgoingCalls ifNil: [ ^ false ].
	^ self outgoingCalls size > 0 