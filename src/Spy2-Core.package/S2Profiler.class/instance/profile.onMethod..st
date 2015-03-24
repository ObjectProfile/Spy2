profiling
profile: aBlock onMethod: aMethod
	[ 	self startOnMethod: aMethod.
		aBlock value ] ensure: [ self stop ]