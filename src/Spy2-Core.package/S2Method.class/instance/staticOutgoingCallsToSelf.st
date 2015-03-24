accessing
staticOutgoingCallsToSelf
	^ staticOutgoingCalls ifNil: [ staticOutgoingCalls := OrderedCollection new ]