running
testSimpleRead
	| results obj |
	results := OrderedCollection new.
	profiler addBehavior: #readOn:receiver:withValue: withBlock: [ :slot :receiver :value :spyProfiler |
		self assert: value equals: nil.
		results add: { slot name }.
		 ].
	profiler 
		profile: [ 
			obj := S2SlotStubExample new.
			self assert: obj a equals: nil.
			self assert: obj b equals: nil.
			self assert: obj a equals: nil. ] 
		onClass: S2SlotStubExample.
	self assert: results asArray equals: #( (#a) (#b) (#a) )