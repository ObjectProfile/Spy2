utils
keepTrackOfInstancesOfPackages: packageNames
	self keepTrackOfInstancesOf: (self pharoClassesOfPackages: packageNames) asArray, { Point . String }