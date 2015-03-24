*Spy2-Core
spyHandleUnwind
	self on: Exception do: [ :ex |
		Halt isHaltOnceEnabled 
			ifTrue: [ 
				Halt disableHaltOnce.
				ex pass ] ].