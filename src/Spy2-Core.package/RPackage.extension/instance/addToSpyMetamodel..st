*Spy2-Core
addToSpyMetamodel: profiler

	(profiler packages includes: self packageName)
		ifFalse: [ 
			profiler packagesDictionary 
				at: self packageName
				put: (profiler buildSpyPackage: self packageName) ].
	^ profiler packagesDictionary at: self packageName