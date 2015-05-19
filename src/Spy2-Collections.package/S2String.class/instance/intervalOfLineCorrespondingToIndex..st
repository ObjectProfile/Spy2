as yet unclassified
intervalOfLineCorrespondingToIndex: anIndex

	"Answer an interval spanning between the first and the last character of the line containing the given character index"
	
	self lineIndicesDo: [:start :endWithoutDelimiters :end |
		anIndex <= end ifTrue: [^ start to: end]].
	^ 0 to: 0