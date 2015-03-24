accessing - computed
withAllOutgoingCalls
	| answer |
	answer := OrderedCollection new.
	answer add: self.
	self allOutgoingCallsRunning: answer.
	^ answer