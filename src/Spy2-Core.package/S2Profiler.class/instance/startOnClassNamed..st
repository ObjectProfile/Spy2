start-stop profiling
startOnClassNamed: className
	(S2Instrumentator onClassNamed: className) applyOn: self