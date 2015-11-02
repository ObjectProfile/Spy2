generic api
onPackages: packages
	|fork classes|
	fork := self newFork.
	classes := self gatherer classesForPackages: packages.
	fork
		methodMapper: (S2ForkMapper new initializeWith: (self gatherer methodsForClasses: classes));
		classMapper: (S2ForkMapper new initializeWith: classes);
		packageMapper: (S2ForkMapper new initializeWith: packages).
	^ fork