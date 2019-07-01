public
rebuild 
	self 
		profiler: (Hapao2 runTestsForClasses: (profiler allClasses collect: #theClass));
		createElementsAndEdges;
	 	elementsToShow: #classes.