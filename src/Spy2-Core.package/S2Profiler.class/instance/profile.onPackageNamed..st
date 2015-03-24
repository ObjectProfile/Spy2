profiling
profile: aBlock onPackageNamed: packageName
	[ 	self startOnPackageNamed: packageName.
		aBlock value ] ensure: [ self stop ]