instance creation
slotForReading
	^ self new
		reading: true;
		writing: false;
		yourself