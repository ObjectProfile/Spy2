as yet unclassified
valuesDo: aBlock
	self keysDo: [:each | aBlock value: (self at: each)]