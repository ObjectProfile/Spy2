instance creation
forWritingOn: aProfiler

	^ (self on: aProfiler)
			prototype: S2Slot slotForWriting;
			yourself