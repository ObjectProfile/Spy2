tests - slots
testMultiWriteSubclass
	| ops |
	ops := OrderedCollection new.
	self writeBlock: [ :slot :receiver :fromval :toval | 
		ops add: { fromval . toval } ].
	self instrumentSlot: (S2SlotStubExample slots detect: [ :s | s name = #a ]).
	S2SlotStubExampleSubclass new 
		a: 5;
		a: 5;
		a: 10.
	self assert: ops asArray equals: #( #(nil 5) #(5 5) #(5 10))
	