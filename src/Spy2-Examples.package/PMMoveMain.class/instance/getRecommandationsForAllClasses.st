accessing
getRecommandationsForAllClasses
	| pharoClasses |
	pharoClasses := profiler allClasses collect: #theClass.
	^ self getRecommandationsFor: pharoClasses