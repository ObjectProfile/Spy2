default
basicNewPluginOn: aProfiler

	^ self 
		on: aProfiler 
		forClassSelector: #basicNew 
		executeBlock: [ :profiler :receiver :returnValue | 
			profiler onBasicNew: returnValue ]