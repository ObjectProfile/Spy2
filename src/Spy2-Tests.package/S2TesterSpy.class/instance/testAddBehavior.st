tests
testAddBehavior
	|flag|
	profiler addBehavior: #foo:bar: withBlock: [ :arg1 :arg2 :spyProfiler | 
		self assert: arg1 equals: 'arg1'.
		self assert: arg2 equals: 'arg2'.
		self assert: spyProfiler equals: profiler.
		flag := true.
		].
	self should: [ profiler bar ] raise: S2TestException.
	self shouldnt: [ profiler foo: 'arg1' bar: 'arg2' ] raise: S2TestException.
	self assert: flag
	