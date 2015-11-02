generic api
onClassCategory: category
	|classCollection|
	classCollection := self gatherClassesForClassCategory: category.
	self 
		methods: (self gatherMethodsForClasses: classCollection)
		classes: classCollection