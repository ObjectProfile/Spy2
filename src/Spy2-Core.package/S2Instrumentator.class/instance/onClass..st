generic api
onClass: class
	self 
		methods: (self gather methodsForClass: class)
		classes: { class }