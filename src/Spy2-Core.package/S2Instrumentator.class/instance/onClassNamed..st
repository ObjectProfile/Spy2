generic api
onClassNamed: className
	| class |
	class := Smalltalk at: className.
	self
		methods: (self gatherMethodsForClass: class)
		classes: { class }