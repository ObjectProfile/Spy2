profiling
profile: aBlock onClass: aClass
	[ 	self startOnClass: aClass.
		aBlock value ] ensure: [ self stop ]