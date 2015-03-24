profiling
profile: aBlock onMethods: aMethodCollection
	[ 	self startOnMethods: aMethodCollection.
		aBlock value ] ensure: [ self stop ]