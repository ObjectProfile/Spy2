hooks
beforeRun: methodName with: listOfArguments in: receiver
	
	| sp |
	hasBeenExecuted := true.
	isOnlyInvokedOnMyself ifTrue: [ 
		receiver class ~~ self theClass ifTrue: [ isOnlyInvokedOnMyself := false ]
	].
	
	sp := self spySender.
	sp ifNotNil: [ self incomingCalls add: sp. sp outgoingCalls add: self ].
	