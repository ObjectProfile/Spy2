accessing
spyCallers
	^ (self callers flatCollect: [ :e | self classSpy packageSpy profiler allClasses flatCollect: [ :c | c methods select: [:m | m instrumentedMethod = e]]]) asOrderedCollection.
	 