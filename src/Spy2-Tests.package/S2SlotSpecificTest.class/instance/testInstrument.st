tests - slots
testInstrument

	self deny: (S2SlotStubExample slots detect: [ :s | s name = #a ]) isSpy.
	self instrumentSlot: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	self assert: (S2SlotStubExample slots detect: [ :s | s name = #a ]) isSpy.
	(S2SlotStubExample slots detect: [ :s | s name = #a ]) uninstall.
	self deny: (S2SlotStubExample slots detect: [ :s | s name = #a ]) isSpy.