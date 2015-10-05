utility
classesOfCategory: aClassCategory
	"aClassCategory could be a category name, or a regular expression"
	^ Smalltalk allClasses select: [ :c | aClassCategory match: c category ].