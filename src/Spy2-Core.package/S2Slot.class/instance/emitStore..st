code generation
emitStore: methodBuilder
	
	writing ifFalse: [ ^ originalSlot emitStore: methodBuilder ].
	methodBuilder
		pushDup;
		pushLiteral: self;
		pushReceiver.
	originalSlot emitValue: methodBuilder.
	methodBuilder
		send: #instrumentWrite:receiver:withValue:;
		popTop.
	originalSlot emitStore: methodBuilder