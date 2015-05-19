as yet unclassified
fuelReplacement
	^ self == Smalltalk specialObjectsArray
		ifTrue: [ nil ]
		ifFalse: [ self ]