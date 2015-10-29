as yet unclassified
classesForClassCategories: categories
	^ categories flatCollect: [ :each | self classesForClassCategory: categories ]