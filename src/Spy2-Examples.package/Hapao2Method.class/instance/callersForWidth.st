accessing
callersForWidth
	self class maxCallers = 0 ifTrue: [ ^ 0 ].
	^(100 * (self callers size) / (self class maxCallers)) max: 1