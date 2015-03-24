generic api
onClassesNamed: classNames
	| classCollection |
	classCollection := classNames collect: [ :name | Smalltalk at: name ].
	self
		methods: (self gatherMethodsForClasses: classCollection)
		classes: classCollection