as yet unclassified
sortReverse: aSortBlock
	"Sort the receiver in-place in reversed order using aSortBlock, which can be one
	of: a closure with two agrument, a closure with one argument or a symbol."

	self sort: [:a :b | aSortBlock value: b. aSortBlock value: a]