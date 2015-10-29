generic api
onClassCategories: categories
	|classCollection|
	classCollection := self gather classesForClassCategories: categories.
	self 
		methods: (self gather methodsForClasses: classCollection)
		classes: classCollection