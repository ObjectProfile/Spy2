running
testSimpleReadSubClass
	| results obj |
	results := OrderedCollection new.
	profiler addBehavior: #readOn:receiver:withValue: withBlock: [ :slot :receiver :value :spyProfiler |
		self assert: value equals: nil.
		results add: { slot name }.
		 ].
	profiler 
		profile: [ 
			obj := S2SlotStubExampleSubclass new.
			self assert: obj a equals: nil.
			self assert: obj c equals: nil.
			self assert: obj a equals: nil. ] 
		onClasses: { S2SlotStubExample . S2SlotStubExampleSubclass }.
	self assert: results asArray equals: #( (#a) (#c) (#a) )