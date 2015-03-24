delegation
= v
	| vp |
	(v isKindOf: S2Method)
		ifTrue: [ vp := v originalMethod ]
		ifFalse: [ vp := v ].
	
	^ self originalMethod == vp