generic api
onClasses: classCollection
	self
		methods: (self gather methodsForClasses: classCollection)
		classes: classCollection copy