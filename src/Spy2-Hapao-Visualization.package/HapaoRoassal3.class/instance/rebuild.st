public
rebuild 
	profiler := Hapao2 runTestsForClasses: (profiler allClasses collect: #theClass).
	self elementsToShow: #classes.