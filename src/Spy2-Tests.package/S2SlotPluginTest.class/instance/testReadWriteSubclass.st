running
testReadWriteSubclass
	| results obj |
	results := OrderedCollection new.
	profiler addBehavior: #readOn:receiver:withValue: withBlock: [ :slot :receiver :value :spyProfiler |
		results add: { slot name . value }.
		 ].
	profiler 
		addBehavior:  #writeOn:receiver:fromValue:toValue:
		withBlock: [ :slot :receiver :fromValue :toValue :spyProfiler |
			results add: { slot name . fromValue . toValue }.
			 ].
	profiler 
		profile: [ 
			obj := S2SlotStubExampleSubclass new.
			self assert: (obj a: 5) equals: obj.
			self assert: (obj c: 1) equals: obj.
			self assert: (obj b: 7) equals: obj.
			self assert: obj a equals: 5.
			self assert: obj sum equals: 13 ] 
		onClasses: { S2SlotStubExample . S2SlotStubExampleSubclass }.
	self 
		assert: results asArray 
		equals: #((#a nil 5) (#c nil 1) (#b nil 7) (#a 5) (#a 5) (#b 7) (#c 1))