util
method: m1 dependsOn: m2
	methodDependencies add: m1 -> m2.
	classDependencies add: m1 classSpy -> m2 classSpy.