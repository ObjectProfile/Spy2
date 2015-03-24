adding
addPackage: aPackageSpy
	self assert: [ aPackageSpy class == self class spyClassForPackage ].
	
	self packagesDictionary at: aPackageSpy packageName put: aPackageSpy.
	aPackageSpy profiler: self.