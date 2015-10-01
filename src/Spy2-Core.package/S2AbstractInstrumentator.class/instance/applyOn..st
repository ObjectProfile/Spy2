hook
applyOn: aProfiler
	self assert: profiler isNil.
	profiler := aProfiler.
	"[ "
		[ 	self profiler invalidateCaches.
			self applyOnAction: aProfiler.
			self profiler computeCaches ] ensure: [ profiler instrumentator: self ]" ] 
		on: Error do: [ :e |
			Error signal: 'Critical error on Spy2 instrumentation. Proceed to clean System.'.
			S2Profiler remove.
			self class initializeProfiler: profiler ]"