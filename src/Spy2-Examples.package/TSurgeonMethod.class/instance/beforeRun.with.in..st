hooks
beforeRun: methodName with: listOfArguments in: receiver
	| spySe |
	tests add: self profiler currentTest.
	
	spySe := self spySender.
	spySe ifNotNil: [ 
		self addIncomingCalls: spySe.
		spySe addOutgoingCalls: self ]