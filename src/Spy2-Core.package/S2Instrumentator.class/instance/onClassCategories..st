generic api
onClassCategories: categories
	|classCollection|
	classCollection := self gatherClassesForClassCategories: categories.
	self 
		methods: (self gatherMethodsForClasses: classCollection)
		classes: classCollection