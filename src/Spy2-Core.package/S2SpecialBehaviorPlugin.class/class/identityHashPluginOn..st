default
identityHashPluginOn: aProfiler

	^ self 
		on: aProfiler 
		forSelector: #identityHash 
		executeBlock: [ :profiler :receiver :returnValue | 
			profiler identityHashCallOn: receiver value: returnValue]