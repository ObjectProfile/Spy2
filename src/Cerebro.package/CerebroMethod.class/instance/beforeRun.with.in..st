hooks
beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."
	| calling |
	calling := self spySender.
	calling class ~~ self class ifTrue: [ ^ self ].

	calling increase: self.
	self profiler mark: self.
	hasBeenExecuted := true 