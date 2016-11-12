*Spy2-Core
spyHandleUnwind
	self on: Exception do: [ :ex |
		Spy2 isDebugSpyEnabled 
			ifTrue: [ 
				Spy2 disableDebugSpy.
				ex pass ]
			ifFalse: [ 
				ex return: nil ] ].