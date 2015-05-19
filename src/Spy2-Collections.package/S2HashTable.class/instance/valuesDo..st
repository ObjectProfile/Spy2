as yet unclassified
valuesDo: aBlock
	self keysAndValuesDo: [ :key :value |
		aBlock value: value ]