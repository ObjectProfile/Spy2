*Spy2-Core
spyRecursionProtectedBlock
	S2Lock isLocked ifTrue: [ ^ nil ].
	[	S2Lock lock.
		self value. 
	] ensure: [ S2Lock unlock ]