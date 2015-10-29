generic api
onPackages: pacakgeCollection
	self 
		methods: (self gather methodsForPackages: pacakgeCollection)
		classes: (self gather classesForPackages: pacakgeCollection)
		packages: pacakgeCollection copy