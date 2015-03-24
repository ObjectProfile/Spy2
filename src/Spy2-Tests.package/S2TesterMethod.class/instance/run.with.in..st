hooks
run: methodName with: listOfArguments in: receiver
	^ self profiler runWithInBlock cull: methodName cull: listOfArguments cull: receiver cull: self