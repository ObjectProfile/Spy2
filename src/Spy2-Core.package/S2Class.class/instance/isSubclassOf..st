testing
isSubclassOf: aClassSpy
	"True of I am a subclass of aClassSpy"
	
	^ self == aClassSpy
		ifTrue: [ true ]
		ifFalse: [ 
			self superclass ifNil: [ ^ false ].
			self superclass isSubclassOf: aClassSpy ]