hooks
beforeRun: methodName with: listOfArguments in: receiver
	| spySe |
	tests add: self profiler currentTest.
	
	spySe := self spySender.
	spySe ifNotNil: [ 
			self haltIf: [ spySe selector == #testCompositeShape ] ].
	spySe ifNotNil: [ spySe callingMethods add: self ]