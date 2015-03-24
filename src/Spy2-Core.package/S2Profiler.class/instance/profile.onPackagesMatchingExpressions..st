profiling
profile: aBlock onPackagesMatchingExpressions: regexCollection
	[ 	self startOnPackagesMatchingExpressions: regexCollection.
		aBlock value ] ensure: [ self stop ]