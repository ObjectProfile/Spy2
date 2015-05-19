as yet unclassified
= anObject
	self == anObject
		ifTrue: [^ true].

	(self class == anObject class
		and: [tally = anObject size])
		ifFalse: [^ false].

	^ self allSatisfy: [:each | anObject includes: each].