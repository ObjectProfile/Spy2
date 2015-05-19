as yet unclassified
keyAtIdentityValue: aValue ifAbsent: aBlock
	"reimplemented for portability"
	self keysAndValuesDo: [:key :value |
		value == aValue
			ifTrue: [^ key]].
	^ aBlock value.