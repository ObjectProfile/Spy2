accessing - computed
allIncomingCalls
	| answer |
	answer := OrderedCollection new.
	answer addAll: self incomingCalls.
	self incomingCalls do: [:c |
		answer addAll: c allIncomingCalls ].
	^ answer