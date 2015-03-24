profiling
profile: aBlock onPackagesNamed: packagesNames
	[ 	self startOnPackagesNamed: packagesNames.
		aBlock value ] ensure: [ self stop ]