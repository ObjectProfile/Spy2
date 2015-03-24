tests - slots
testOnlyRead
	| ops slotA |
	ops := OrderedCollection new.
	self readBlock: [ :slot :receiver :val | 
		ops add: { slot . val } ].
	self instrumentSlotForReading: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	slotA := S2SlotStubExample slots detect: [ :s | s name = #a ].
	self 
		assert: (S2SlotStubExampleSubclass new 
			b: 2;
			a: 3;
			c: 7;
			sum) 
		equals: 12.
	self assert: ops asArray equals: { 
			{slotA . 3} }
	