instance creation
forReadingOn: aProfiler

	^ (self on: aProfiler)
			prototype: S2Slot slotForReading;
			yourself