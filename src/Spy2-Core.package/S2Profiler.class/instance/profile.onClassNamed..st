profiling
profile: aBlock onClassNamed: className
	[ 	self startOnClassNamed: className.
		aBlock value ] ensure: [ self stop ]