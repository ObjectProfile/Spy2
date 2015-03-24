template
templateX: xInteger Y: yInteger 
	"
	INSTRUMENTED METHOD
	"
	| value |
	value := self basicNew setX: xInteger setY: yInteger.
	[ #profiler afterPointNew: value ] spyProtected.
	^ value