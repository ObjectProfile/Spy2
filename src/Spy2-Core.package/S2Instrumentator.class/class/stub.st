misc
stub
	^ Instance ifNil: [ Instance := S2Instrumentator new profiler: 1; yourself ]