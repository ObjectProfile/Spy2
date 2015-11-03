generic api
onClassesNamed: classNames
	| classCollection |
	classCollection := classNames collect: [ :name | Smalltalk at: name ].
	self
		methods: (self gather methodsForClasses: classCollection)
		classes: classCollection