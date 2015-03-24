profiling
profile: aBlock onClassCategory: classCategory
	[ 	self startOnClassCategory: classCategory.
		aBlock value ] ensure: [ self stop ]