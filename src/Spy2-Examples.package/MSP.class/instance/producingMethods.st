visualization
producingMethods
	producingMethodsCache ifNil: [ producingMethodsCache := self allMethods select: #hasCreatedObject ].
	^ producingMethodsCache