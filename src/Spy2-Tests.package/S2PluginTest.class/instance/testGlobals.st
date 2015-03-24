tests
testGlobals
	self assert: (self isGlobal: S2LiteralStub asGlobal for: #S2LiteralStub).
	self assert: (self isGlobal: 'S2LiteralStub' asGlobal for: #S2LiteralStub).
	self assert: (self isGlobal: #S2LiteralStub asGlobal for: #S2LiteralStub).