generic api
onClassCategory: category
	|classCollection|
	classCollection := self gather classesForClassCategory: category.
	self 
		methods: (self gather methodsForClasses: classCollection)
		classes: classCollection