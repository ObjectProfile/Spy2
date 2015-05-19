as yet unclassified
sliceFrom: startIndex

	"Answers a copy of a subset of the receiver, starting from element at start index 
	up to the end of the collection.

	Comfortable alternative to stupid copyFrom:to: method.
	See also comment on sliceFrom:to:"

	^self sliceFrom: startIndex to: self size