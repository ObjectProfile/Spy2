hooks
beforeRun: methodName with: listOfArguments in: receiver
	| m |
	numberOfExecutions := numberOfExecutions + 1.
	
	m := self spySender.
	m ifNil: [ ^ self ].
	callingMethods add: m.
	m addCalledMethod: self.	