template
templateNew: sizeRequested 
	"
	INSTRUMENTED METHOD
	"
	| value |
	value := super new: sizeRequested.
	[ #profiler afterStringNew: value ] spyProtected.
	^ value