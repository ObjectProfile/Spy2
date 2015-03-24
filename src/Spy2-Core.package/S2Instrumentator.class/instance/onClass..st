generic api
onClass: class
	self 
		methods: (self gatherMethodsForClass: class)
		classes: { class }