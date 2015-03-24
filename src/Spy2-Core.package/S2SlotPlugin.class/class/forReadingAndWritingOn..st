instance creation
forReadingAndWritingOn: aProfiler

	^ (self on: aProfiler)
			prototype: S2Slot slotForReadingAndWriting;
			yourself