utilities
classesOfCategory: aClassCategory
	"aClassCategory could be a category name, or a regular expression"
	
	^ (Smalltalk globals allClasses 
		select: [ :c | aClassCategory match: c category ]) asSet.