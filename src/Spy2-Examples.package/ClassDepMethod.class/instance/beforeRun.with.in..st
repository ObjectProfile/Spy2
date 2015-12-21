hooks
beforeRun: methodName with: listOfArguments in: receiver
	| caller |
	self profiler incrMessageSent.
	caller := self spySender.
	caller ifNotNil: [ 
		self profiler method: caller dependsOn: self ].
 