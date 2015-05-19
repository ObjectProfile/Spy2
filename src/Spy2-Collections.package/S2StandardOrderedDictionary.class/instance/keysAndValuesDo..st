as yet unclassified
keysAndValuesDo: aBlock
	self keysDo: [:each | aBlock value: each value: (self at: each)]