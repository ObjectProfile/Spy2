accessing
incomingCalls
	^ incomingCalls ifNil: [ incomingCalls := self incomingAndOutgoingCallClass new ]