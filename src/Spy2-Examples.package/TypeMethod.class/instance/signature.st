accessing
signature
	| s |
	self hasBeenExecuted
		ifFalse: [ s := WriteStream on: String new.
			s nextPutAll: '{ '.
			self selector numArgs timesRepeat: [ s nextPutAll: 'Object ' ].
			s nextPutAll: '} -> Object'.
			^ s contents ].
	
	^ self argumentTypes asString , ' -> ' , self returnType asString