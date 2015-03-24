accessing
spyCallees
	^ (self classSpy packageSpy profiler allClasses flatCollect: [ :c | c methods select: [ :m | m callers includes: self instrumentedMethod]]) asOrderedCollection.
	 