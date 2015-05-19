as yet unclassified
sliceFrom: startIndex to: endIndex

	"Answers a copy of a subset of the receiver, starting from element at start index
	until element at end index.

	Comfortable alternative to stupid copyFrom:to: method.
	If the start or end index is negative, the index will be counted from the end of the collection.

	Note: this method does NEVER throw a SubscriptOutOfBoundsError. If the indexes are
	too large or start is greater than end, then an empty collection will be returned."

	| start end |

	start := 1 max:
		(startIndex positive ifTrue: [startIndex] ifFalse: [self size + startIndex +1]).

	end := self size min: 
		(endIndex positive ifTrue: [endIndex] ifFalse: [self size + endIndex]).

	((start > end) or: [end <= 0]) ifTrue: [^self copyEmpty: 0].
	^self copyFrom: start to: end