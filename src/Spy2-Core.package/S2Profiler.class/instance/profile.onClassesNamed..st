profiling
profile: aBlock onClassesNamed: classNames
	[ 	self startOnClassesNamed: classNames.
		aBlock value ] ensure: [ self stop ]