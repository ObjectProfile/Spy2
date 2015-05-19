as yet unclassified
gtInspectorInterestingObject
	^ self size = 1
		ifTrue: [ self anyOne ]
		ifFalse: [ self ]