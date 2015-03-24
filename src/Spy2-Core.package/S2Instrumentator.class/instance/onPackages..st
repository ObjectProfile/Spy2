generic api
onPackages: pacakgeCollection
	self 
		methods: (self gatherMethodsForPackages: pacakgeCollection)
		classes: (self gatherClassesForPackages: pacakgeCollection)
		packages: pacakgeCollection copy