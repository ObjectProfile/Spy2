tests - slots
testOnlyWrite
	| ops slotA |
	ops := OrderedCollection new.
	self writeBlock: [ :slot :receiver :fromval :toval | 
		ops add: { slot . fromval . toval } ].
	self instrumentSlotForWriting: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	slotA := S2SlotStubExample slots detect: [ :s | s name = #a ].
	self 
		assert: (S2SlotStubExampleSubclass new 
			b: 2;
			a: 3;
			c: 7;
			sum) 
		equals: 12.
	self assert: ops asArray equals: { 
			{slotA  . nil . 3} }
	