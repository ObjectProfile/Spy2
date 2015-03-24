profiling
profile: aBlock onPackage: aPackage
	[ 	self startOnPackage: aPackage.
		aBlock value ] ensure: [ self stop ]