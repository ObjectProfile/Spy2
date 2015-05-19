as yet unclassified
associationsDo: aBlock 
	self keysAndValuesDo: [:key :value | aBlock value: key -> value]