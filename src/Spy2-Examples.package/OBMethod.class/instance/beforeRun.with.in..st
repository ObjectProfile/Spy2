hooks
beforeRun: methodName with: listOfArguments in: receiver

	| msg |
	msg := OBMessage new.
	msg selector: methodName.
	msg object: receiver.
	msg objectCopy: receiver copy.
	msg argumentsCopy: (listOfArguments collect: #copy).
	
	self profiler addMessage: msg