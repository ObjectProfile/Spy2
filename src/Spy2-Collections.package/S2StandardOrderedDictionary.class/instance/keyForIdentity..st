as yet unclassified
keyForIdentity: anObject
	"reimplemented for portability"
	self keysAndValuesDo: [:key :value |
		value == anObject
			ifTrue: [^ key]].
	^ nil.