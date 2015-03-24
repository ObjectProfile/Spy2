classic plugins
basicNewPluginOn: aProfiler
	Warning signal: 'The behavior of the basicNewPlugin has changed, now you must implement the Profiler>>onBasicNew: method that receives the object created as an argument.'.
	^ S2SpecialBehaviorPlugin basicNewPluginOn: aProfiler