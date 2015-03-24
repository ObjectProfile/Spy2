accessing
superclass
	^ self profiler classAt: self theClass superclass name ifNone: [nil]