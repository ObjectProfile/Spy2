accessing
signature
	| s at ats |
	self hasBeenExecuted
		ifFalse: [ s := WriteStream on: String new.
			s nextPutAll: '{ '.
			self selector numArgs timesRepeat: [ s nextPutAll: 'Object ' ].
			s nextPutAll: '} -> Object'.
			^ s contents ].
	
	at := self argumentTypes.
	ats := at size > 0 ifTrue: [ at asString ] ifFalse: [ '{}' ].
	^ ats, ' -> ' , self returnType asString