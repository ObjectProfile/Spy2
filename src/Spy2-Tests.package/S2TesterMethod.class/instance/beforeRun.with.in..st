hooks
beforeRun: methodName with: listOfArguments in: receiver
	^ self profiler beforeRunBlock cull: methodName cull: listOfArguments cull: receiver cull: self