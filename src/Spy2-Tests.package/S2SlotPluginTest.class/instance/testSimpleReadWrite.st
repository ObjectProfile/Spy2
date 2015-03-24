running
testSimpleReadWrite
	| results obj |
	results := OrderedCollection new.
	profiler addBehavior: #readOn:receiver:withValue: withBlock: [ :slot :receiver :value :spyProfiler |
		results add: { slot name . value }.
		 ].
	profiler 
		addBehavior: #writeOn:receiver:fromValue:toValue:
		withBlock: [ :slot :receiver :fromValue :toValue :spyProfiler |
			results add: { slot name . fromValue . toValue }.
			 ].
	profiler 
		profile: [ 
			obj := S2SlotStubExample new.
			self assert: (obj a: 5) equals: obj.
			self assert: (obj b: 7) equals: obj.
			self assert: obj a equals: 5.
			self assert: obj sum equals: 12 ] 
		onClass: S2SlotStubExample.
	self assert: results asArray equals: #( (#a nil 5) (#b nil 7) (#a 5) (#a 5) (#b 7) )