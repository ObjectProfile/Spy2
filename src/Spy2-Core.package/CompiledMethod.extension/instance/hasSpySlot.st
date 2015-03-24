*Spy2-Core-Testing
hasSpySlot
	^ self literals anySatisfy: [ :slot | slot isKindOf: S2Slot ]