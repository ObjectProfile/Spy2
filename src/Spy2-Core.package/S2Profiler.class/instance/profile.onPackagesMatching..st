profiling
profile: aBlock onPackagesMatching: regex
	[ 	self startOnPackagesMatching: regex.
		aBlock value ] ensure: [ self stop ]