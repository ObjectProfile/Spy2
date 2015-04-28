util
recompileMethodsWithSlots
	Smalltalk allMethods do: [ :method |
			method hasSpySlot ifTrue: [ method recompile ] ].
	