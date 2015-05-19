as yet unclassified
asSequenceParser
	^ PPSequenceParser withAll: (self collect: [ :each | each asParser ])