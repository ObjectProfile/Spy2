test - basic
testErrorAplyingVoidToVoid
	self should: [ S2VoidInstrumentator new applyOn: profiler ] raise: AssertionFailure