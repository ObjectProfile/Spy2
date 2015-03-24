code generation
emitValue: methodBuilder

	reading ifFalse: [ ^ originalSlot emitValue: methodBuilder ].
	originalSlot emitValue: methodBuilder.
	methodBuilder
		pushDup;
		pushLiteral: self;
		pushReceiver;
		send: #instrumentRead:receiver:;
		popTop.
