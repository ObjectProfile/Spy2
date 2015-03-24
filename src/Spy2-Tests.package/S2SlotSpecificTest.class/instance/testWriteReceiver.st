tests - slots
testWriteReceiver
	|   obj flag |
	obj := S2SlotStubExample new.
	self writeBlock: [ :slot :receiver :val | 
		self assert: receiver = obj.
		flag := true ].
	self instrumentSlotForWriting: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	obj a: 5.
	self assert: flag
	