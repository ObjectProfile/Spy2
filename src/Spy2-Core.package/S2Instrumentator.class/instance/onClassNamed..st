generic api
onClassNamed: className
	| class |
	class := Smalltalk at: className.
	self
		methods: (self gather methodsForClass: class)
		classes: { class }