accessing - computed
allOutgoingCalls
	| answer |
	answer := OrderedCollection new.
	self allOutgoingCallsRunning: answer.
	^ answer