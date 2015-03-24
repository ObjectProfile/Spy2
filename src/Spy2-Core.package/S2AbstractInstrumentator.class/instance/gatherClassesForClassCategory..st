utils - gathering
gatherClassesForClassCategory: category
	^ (SystemOrganization listAtCategoryNamed: category) collect: [ :name | Smalltalk at: name ]