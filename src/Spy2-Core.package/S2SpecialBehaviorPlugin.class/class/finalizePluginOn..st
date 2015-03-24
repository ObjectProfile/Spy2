default
finalizePluginOn: aProfiler

	^ self 
		on: aProfiler 
		forSelector: #finalize 
		executeBlock: [ :profiler :receiver :returnValue | 
			profiler onFinalize: receiver]