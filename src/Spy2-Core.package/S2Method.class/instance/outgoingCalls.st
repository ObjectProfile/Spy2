accessing
outgoingCalls
	^ outgoingCalls ifNil: [ outgoingCalls := self incomingAndOutgoingCallClass new ]