as yet unclassified
collect: aBlock
| newCollection index|
	newCollection := self species new: self size.
	index := 1.
	self do: [ :ti |
		newCollection at: index put: (aBlock value: ti).
		index := index + 1].
	^ newCollection