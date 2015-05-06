public
profileClassCategory
	"
	Ask the user to choose a recently-modified class and assess its coverage.
	
	self new profileClassCategory
	"

	| category index categories classes |
	categories := self lastClassCategories.
	index := UIManager default chooseFrom: categories.
	index = 0
		ifTrue: [ ^ self ].
	category := categories at: index.

	classes := self classesOfCategory: category.
	classes size = 0 ifTrue: [ ^ self ].

	self profileClasses: classes