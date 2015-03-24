hooks
beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."
	
	| m |
	numberOfExecutions := numberOfExecutions + 1.

	m := self spySender.
	m ifNil: [ ^ self ].
	(alreadyCheckedMethods includes: m) not ifTrue: [ 
		callingMethods add: m.
		m addCalledMethod: self.	
		alreadyCheckedMethods add: m ].
