tests - slots
testSimpleRead

	| f |
	self readBlock: [ :slot :receiver :val | 
		self assert: slot name = #a.
		self assert: val = nil.
		f := true ].
	self instrumentSlot: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	S2SlotStubExample new a.
	self assert: f