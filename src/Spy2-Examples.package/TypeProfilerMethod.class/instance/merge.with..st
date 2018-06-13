hooks
merge: aClass with: anotherClass
	(aClass = anotherClass) ifTrue:[ ^ aClass].
	^ (anotherClass isKindOf: aClass ) 
			ifTrue:[ aClass ]
			ifFalse:[ self merge: (aClass superclass) with: anotherClass].