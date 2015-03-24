as yet unclassified
outgoingCalls
	| r |
	outgoingCallsCache ifNotNil: [ ^ outgoingCallsCache ].
	r := OrderedCollection new.
	(self allMethods select: #hasBeenExecuted) 
		do: [ :m | r addAll: (m outgoingCalls collect: #classSpy) ].
	^ outgoingCallsCache := r asSet