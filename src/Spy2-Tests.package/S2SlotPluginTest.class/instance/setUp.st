running
setUp

	profiler := S2Tester new.
	profiler classPlugins: (Array with: (S2SlotPlugin on: profiler))