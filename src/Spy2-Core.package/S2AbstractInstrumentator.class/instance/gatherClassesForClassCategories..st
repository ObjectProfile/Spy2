utils - gathering
gatherClassesForClassCategories: categories
	^ categories flatCollect: [ :each | self gatherClassesForClassCategory: categories ]