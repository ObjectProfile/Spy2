template
templateR: xInteger Degrees: yInteger 
	"
	INSTRUMENTED METHOD
	"
	| value |
	value := self basicNew setR: xInteger degrees: yInteger.
	[ #profiler afterPointNew: value ] spyProtected.
	^ value