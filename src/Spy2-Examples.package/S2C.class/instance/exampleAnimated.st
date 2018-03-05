examples
exampleAnimated

"
-== INSPECT THE FOLLOWING ==-
profiler := S2C new.
profiler startOnPackageNamed: 'NeuralNetworks'.
profiler animatedVisualization.


-== DO SOMETHONG WITH NeuralNetworks ==- 
for example:
n := NNLang new.
n data: #('hello' 'bonjour' 'cow' 'tea' 'bag' 'circle' 'house' 'table' 'chair').
n feature: [ :w | w asArray ].
n expectedOutput: [ :w | w size ].
n epochs: 2000.
n train.

n predict: 'label'.
n predict: 'cog'.

-== YOU SHOULD NOT FORGET TO STOP THE PROFILER ==-
This is necessary before calling startOnPackageNamed: a second time
profiler stop.
"