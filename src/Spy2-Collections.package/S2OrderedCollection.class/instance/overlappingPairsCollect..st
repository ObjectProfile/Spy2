as yet unclassified
overlappingPairsCollect: aBlock 
	"Answer the result of evaluating aBlock with all of the overlapping pairs of my elements. Override superclass in order to use addLast:, not at:put:."
	| retval |
	retval := self species new: self size - 1.
	firstIndex to: lastIndex - 1 do:
		[:index |
		retval addLast: (aBlock value: (array at: index) value: (array at: index + 1))].
	^retval
