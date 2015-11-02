generic api
onClasses: classCollection
	self
		methods: (self gatherMethodsForClasses: classCollection)
		classes: classCollection copy