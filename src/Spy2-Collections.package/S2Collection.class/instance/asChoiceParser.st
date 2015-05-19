as yet unclassified
asChoiceParser
	^ PPChoiceParser withAll: (self collect: [ :each | each asParser ])