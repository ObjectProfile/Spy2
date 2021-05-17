hook
applyOn: aProfiler
	self assert: profiler isNil.
	"self assert: S2Lock isLocked not."
	profiler := aProfiler.
	"[ "
		[	S2Lock lock. 	
			self profiler invalidateCaches.
			self applyOnAction: aProfiler.
			self profiler computeCaches ] 
		ensure: [ 
			S2Lock unlock.
			profiler instrumentator: self ]" ] 
		on: Error do: [ :e |
			Error signal: 'Critical error on Spy2 instrumentation. Proceed to clean System.'.
			S2Profiler remove.
			self class initializeProfiler: profiler ]"