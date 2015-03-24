hook
applyOnAction: aProfiler
	self assert: [ aProfiler instrumentator isVoidInstrumentator not ] description: 'Not to be used over another VoidInstrumentator. Ensure that profiler has started.'.
	[ self profiler afterProfiling ]
		ensure: [ 
			super applyOnAction: aProfiler.
			self uninstallProfilerPlugins.
			self profiler afterUninstalling]