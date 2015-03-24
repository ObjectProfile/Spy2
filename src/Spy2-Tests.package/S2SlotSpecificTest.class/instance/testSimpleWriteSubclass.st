tests - slots
testSimpleWriteSubclass

	| f |
	self writeBlock: [ :slot :receiver :fromval :toval | 
		self assert: slot name = #a.
		self assert: fromval = nil.
		self assert: toval = 5.
		f := true].
	self instrumentSlot: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	S2SlotStubExampleSubclass new a: 5.
	self assert: f