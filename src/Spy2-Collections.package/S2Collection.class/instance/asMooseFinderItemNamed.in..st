as yet unclassified
asMooseFinderItemNamed: aString in: aMooseEntity

	| groupName |
	^ self size = 1
		ifTrue: [ self anyOne asMooseFinderItemNamed: aString in: aMooseEntity ]
		ifFalse: [
			groupName := aString capitalized, ' in ', aMooseEntity mooseName.
			MooseGroup withAll: self withDescription: groupName ]