as yet unclassified
groupedBy: aBlock affect: anotherBlock
	"First, evaluate aBlock for each of the receiver's elements and group the
	elements by the resulting values, and second, evaluate anotherBlock for
	each of the resulting groups and return a dictionary with the first pass'
	results as keys and the second pass' results as values."

	"This is a shorthand for [ (self groupedBy: aBlock) collect: anotherBlock ]."

	^(self groupedBy: aBlock) associationsDo: [ :each | each value: (anotherBlock value: each value) ]