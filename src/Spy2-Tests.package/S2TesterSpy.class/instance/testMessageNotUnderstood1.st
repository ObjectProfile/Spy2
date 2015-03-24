tests
testMessageNotUnderstood1

	profiler messageNotUnderstoodBlock: [ :message :spyProfiler | 
		message selector = #foo 
			ifTrue: [ self ]
			ifFalse: [ S2TestException signal ]].
	self shouldnt: [ profiler foo ] raise: S2TestException.
	self should: [ profiler bar ] raise: S2TestException