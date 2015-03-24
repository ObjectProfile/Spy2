accessing - computed
allOutgoingCallsRunning: collection
	self outgoingCalls do: [:c |
		(collection anySatisfy: [:v | v == c ] )
			ifFalse: [ collection add: c. 
						 c allOutgoingCallsRunning: collection] ].
