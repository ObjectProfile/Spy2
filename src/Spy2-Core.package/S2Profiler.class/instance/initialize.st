initialization
initialize 
	super initialize.
	packages := Dictionary new.
	methodPlugins := (self plugins: #S2MethodPlugin) sortedAs: #priority.
	classPlugins := (self plugins: #S2ClassPlugin) sortedAs: #priority.
	profilerPlugins := (self plugins: #S2ProfilerPlugin) sortedAs: #priority.
	S2Instrumentator initializeProfiler: self.