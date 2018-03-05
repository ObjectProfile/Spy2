examples
exampleAnimated2

"
-== INSPECT THE FOLLOWING ==-
profiler := S2C new.
profiler startOnPackageNamed: 'Nautilus'.
profiler animatedVisualization.

-== OPEN A SYSTEM BROWSER AND DO STUFF WITH IT ==- 

-== YOU SHOULD NOT FORGET TO STOP THE PROFILER ==-
This is necessary before calling startOnPackageNamed: a second time
profiler stop.
"