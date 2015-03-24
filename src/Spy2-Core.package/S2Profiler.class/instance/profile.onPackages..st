profiling
profile: aBlock onPackages: packageCollection
	[ 	self startOnPackages: packageCollection.
		aBlock value ] ensure: [ self stop ]