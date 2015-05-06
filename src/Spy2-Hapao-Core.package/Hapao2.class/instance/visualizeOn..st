visualization
visualizeOn: view
	^ HapaoVisualization new 
		profiler: self;
		visualizeOn: view