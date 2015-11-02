hooks
beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."
	| testMethod |
	callers add: self sender.
	hasBeenExecuted := true.
	calls := calls + 1.
	
	"We keep track of the test method that calls me"
	testMethod := self profiler currentTestMethod.
	testMethod ifNotNil: [ testedMethods add: testMethod ]