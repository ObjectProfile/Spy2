instance creation
slotForWriting
	^ self new
		reading: false;
		writing: true;
		yourself