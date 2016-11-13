testing
isSubclassOf: aClassSpy
	"True of I am a subclass of aClassSpy"
	aClassSpy ifNil: [ false ].
	self superclass ifNil: [ ^ false ].
	^ self superclass == aClassSpy
		ifTrue: [ true ]
		ifFalse: [ self superclass isSubclassOf: aClassSpy ]