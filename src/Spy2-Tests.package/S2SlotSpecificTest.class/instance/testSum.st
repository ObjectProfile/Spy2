tests - slots
testSum
	| ops slotA slotB slotC |
	ops := OrderedCollection new.
	self readBlock: [ :slot :receiver :val | 
		ops add: { slot . val } ].
	self writeBlock: [ :slot :receiver :fromval :toval | 
		ops add: { slot . fromval . toval } ].
	(S2SlotStubExample withAllSubclasses flatCollect: #slots) do: [:s | self instrumentSlot: s ].
	slotA := S2SlotStubExample slots detect: [ :s | s name = #a ].
	slotB := S2SlotStubExample slots detect: [ :s | s name = #b ].
	slotC := S2SlotStubExampleSubclass slots detect: [ :s | s name = #c ].
	self 
		assert: (S2SlotStubExampleSubclass new 
			b: 2;
			a: 3;
			c: 7;
			sum) 
		equals: 12.
	self assert: ops asArray equals: { 
			{slotB . nil . 2} . 
			{slotA  . nil . 3} . 
			{slotC . nil . 7} .
			{slotA . 3} . 
			{slotB . 2} .
			{slotC . 7} }
	