as yet unclassified
groups

	^ groups ifNil: [ groups := self computeGroups ]