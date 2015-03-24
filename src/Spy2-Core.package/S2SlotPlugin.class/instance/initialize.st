hooks
initialize
	super initialize.
	newSlots := Dictionary new.
	prototype := S2Slot slotForReadingAndWriting