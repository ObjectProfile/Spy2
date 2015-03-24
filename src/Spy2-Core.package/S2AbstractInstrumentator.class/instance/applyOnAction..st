hook
applyOnAction: aProfiler
	self assertBlacklist.
	self instrumentChangesFrom: profiler instrumentator.