visualization
createElementsAndEdges
	| allClasses |
	allClasses := profiler allClasses.
	testsShape := self applyLayout: (allClasses select: #isUnitTest).
	classesShape := self applyLayout: (allClasses reject: #isUnitTest).