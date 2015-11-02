generic api
onClasses: classes
	|fork|
	fork := self newFork.
	fork
		methodMapper: (S2ForkMapper new initializeWith: (self gatherer methodsForClasses: classes));
		classMapper: (S2ForkMapper new initializeWith: classes);
		packageMapper: (S2ForkMapper new initializeWith: (self gatherer packagesForClasses: classes)).
	^ fork