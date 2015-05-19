as yet unclassified
keysDo: aBlock
	self keysAndValuesDo: [ :key :value |
		aBlock value: key ]