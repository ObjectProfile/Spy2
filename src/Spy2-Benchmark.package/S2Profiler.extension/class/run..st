*Spy2-Benchmark
run: aBenchmarkClass
	|profiler|
	profiler := self new.
	(aBenchmarkClass on: profiler) run.
	^ profiler