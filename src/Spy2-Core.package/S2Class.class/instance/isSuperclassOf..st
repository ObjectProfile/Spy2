testing
isSuperclassOf: aClassSpy
	"True of I am a subclass of aClassSpy"
	(aClassSpy isNil or: [ aClassSpy == self ])
		ifTrue: [ ^ false ].
	^ aClassSpy isSubclassOf: self