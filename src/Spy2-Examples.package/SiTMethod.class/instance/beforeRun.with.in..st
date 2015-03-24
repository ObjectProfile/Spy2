hooks
beforeRun: methodName with: listOfArguments in: receiver
	| testMethodSpy |	
	testMethodSpy := self profiler currentRunningTest.
	testMethodSpy ifNotNil: [ 
		testMethods add: testMethodSpy.
		testMethodSpy addTestedMethod: self ]