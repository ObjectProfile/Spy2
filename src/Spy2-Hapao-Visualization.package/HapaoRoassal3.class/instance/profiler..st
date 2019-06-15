accessing
profiler: aProfiler
	profiler := aProfiler.
	profiler allMethods
		do: [ :m | 
			Hapao2Method maxCallers: (Hapao2Method maxCallers max: m callers size).
			Hapao2Method maxCalls: (Hapao2Method maxCalls max: m calls).
			m compiledMethod ifNotNil: [ Hapao2Method maxLines: (Hapao2Method maxLines max: m compiledMethod linesOfCode) ] ].
	colorScale := TSScale linear 
		domain: { 0. (Hapao2Method maxCalls max: 1). };
		range: {Color white. Color black}.