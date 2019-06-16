visualization
createElementsAndEdges
	| allClasses |
	allClasses := profiler allClasses.
	testsShape := self createShapesFor: (allClasses select: #isUnitTest).
	classesShape := self createShapesFor: (allClasses reject: #isUnitTest).