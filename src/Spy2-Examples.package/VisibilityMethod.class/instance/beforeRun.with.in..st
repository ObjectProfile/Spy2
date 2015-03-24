hooks
beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."
	
	| spySender |
	hasBeenExecuted := true.
	spySender := self spySender.
	spySender ifNotNil: [ 
		(spySender classSpy == self classSpy) 
			ifTrue: [ ^ self hitPrivateVisibility ].

		(spySender classSpy theClass category == self classSpy theClass category) 
			ifTrue: [ ^ self hitDefaultVisibility ].

		(spySender classSpy isSubclassOf: self classSpy) 
			ifTrue: [ ^ self hitProtectedVisibility ].

		^ self hitPublicVisibility
	]