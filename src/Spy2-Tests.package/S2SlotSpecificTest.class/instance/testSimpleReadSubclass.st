tests - slots
testSimpleReadSubclass

	| f |
	self readBlock: [ :slot :receiver :val | 
		self assert: slot name = #a.
		self assert: val = nil.
		f := true].
	self instrumentSlot: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	S2SlotStubExampleSubclass new a.
	self assert: f