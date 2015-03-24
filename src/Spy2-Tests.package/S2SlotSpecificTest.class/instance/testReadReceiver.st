tests - slots
testReadReceiver
	|   obj flag |
	obj := S2SlotStubExample new.
	self readBlock: [ :slot :receiver :val | 
		self assert: receiver = obj.
		flag := true ].
	self instrumentSlotForReading: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	obj a.
	self assert: flag
	