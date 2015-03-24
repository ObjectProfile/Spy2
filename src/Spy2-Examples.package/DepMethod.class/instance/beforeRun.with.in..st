hooks
beforeRun: methodName with: listOfArguments in: receiver	
	| caller |
	numberOfExecutions := numberOfExecutions + 1.
	caller := self spySender.
	caller ifNotNil: [ self incomingCalls add: caller. caller outgoingCalls add: self ].
	