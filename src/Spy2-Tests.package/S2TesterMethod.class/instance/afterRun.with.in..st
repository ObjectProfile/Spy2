hooks
afterRun: methodName with: listOfArguments in: receiver
	^ self profiler afterRunBlock cull: methodName cull: listOfArguments cull: receiver cull: self