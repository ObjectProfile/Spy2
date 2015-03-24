default
hashPluginOn: aProfiler

	^ self 
		on: aProfiler 
		forSelector: #hash 
		executeBlock: [ :profiler :receiver :returnValue | 
			profiler hashCallOn: receiver value: returnValue]