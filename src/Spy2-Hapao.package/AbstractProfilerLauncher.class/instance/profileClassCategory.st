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
	classes ifEmpty: [ ^ self ].
	classes copy do: [ :c | classes addAll: c unitTestsReferencingMe ].

	self profileClasses: classes