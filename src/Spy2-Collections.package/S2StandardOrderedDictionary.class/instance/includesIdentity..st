as yet unclassified
includesIdentity: anObject
	"reimplemented for portability"
	self valuesDo: [:each |
		each == anObject
			ifTrue: [^ true]].
	^ false.