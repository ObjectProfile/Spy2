hooks
install

	self addToSpyMetamodel.
	[ 
	self assert: profiler isNotNil.
	self 	primitiveInstallTemplate: S2PointNewPlugin class >> #templateX:Y: 
			forMethod: Point class >> #x:y:.
	self 	primitiveInstallTemplate: S2PointNewPlugin class >> #templateR:Degrees: 
			forMethod: Point class >> #r:degrees:.
	self 	primitiveInstallTemplate: S2PointNewPlugin class >> #@ 
			forMethod: Number >> #@.
	] valueUnpreemptively