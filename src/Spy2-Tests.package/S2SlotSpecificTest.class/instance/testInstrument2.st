tests - slots
testInstrument2

	self deny: (S2SlotStubExample >> #a) hasSpySlot.
	self instrumentSlot: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	(S2SlotStubExample >> #a) recompile.
	self assert: (S2SlotStubExample >> #a) hasSpySlot.
	(S2SlotStubExample slots detect: [ :s | s name = #a ]) uninstall.
	(S2SlotStubExample >> #a) recompile.
	self deny: (S2SlotStubExample >> #a) hasSpySlot.