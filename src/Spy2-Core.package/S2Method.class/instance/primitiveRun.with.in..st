hooks
primitiveRun: methodName with: listOfArguments in: receiver
	| v frame |
	"frame is a critical instance variable, since the S2Context hold WeakReferences, so this variable prevents garbage collection."
	S2Lock isLocked ifTrue: [ ^ originalMethod valueWithReceiver: receiver arguments: listOfArguments ].
	[
		S2Lock lock.
		frame := (S2StackFrame 
								spyMethod: self 
								arguments: listOfArguments 
								receiver: receiver).
		S2Context push: frame.
		self beforeRun: methodName with: listOfArguments in: receiver.
		self classSpy beforeEachExecution: methodName on: receiver with: listOfArguments.
		v := self run: methodName with: listOfArguments in: receiver.
		self returnValue: v.
		self afterRun: methodName with: listOfArguments in: receiver.
		self classSpy afterEachExecution: methodName On: receiver with: listOfArguments.
	] ensure: [ 
		S2Context pop.
		S2Lock unlock.
	 ].

	^ v