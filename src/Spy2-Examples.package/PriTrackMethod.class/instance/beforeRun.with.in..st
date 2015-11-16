hooks
beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."
	self originalMethod isPrimitive
		ifTrue: [ self profiler log: (self theClass name, '>>', methodName, '       arg: ', listOfArguments asString, '      in: ', receiver asString) ]