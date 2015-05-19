as yet unclassified
associationsDo: aBlock
	self keysDo: [:each | aBlock value: (self associationAt: each)]