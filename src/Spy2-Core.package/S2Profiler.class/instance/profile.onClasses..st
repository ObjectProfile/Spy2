profiling
profile: aBlock onClasses: aClassCollection
	[ 	self startOnClasses: aClassCollection.
		aBlock value ] ensure: [ self stop ]