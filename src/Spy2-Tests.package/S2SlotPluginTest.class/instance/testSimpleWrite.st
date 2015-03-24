running
testSimpleWrite
	| results obj |
	results := OrderedCollection new.
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
			self assert: (obj b: 13) equals: obj. ] 
		onClass: S2SlotStubExample.
	self assert: results asArray equals: #( (#a nil 5) (#b nil 7) (#b 7 13) )