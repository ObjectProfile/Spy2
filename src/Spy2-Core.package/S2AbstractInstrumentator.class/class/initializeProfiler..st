private - profiler
initializeProfiler: aProfiler
	aProfiler instrumentator: (S2VoidInstrumentator new 
											profiler: aProfiler;
											yourself)