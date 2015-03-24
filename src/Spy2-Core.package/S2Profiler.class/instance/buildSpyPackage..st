build metamodel
buildSpyPackage: packageName

	^ self class spyClassForPackage new
		packageName: packageName;
		profiler: self;
		yourself