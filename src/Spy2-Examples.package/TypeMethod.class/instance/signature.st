as yet unclassified
signature
	| returnType argumentsType s |
	self hasBeenExecuted ifFalse: [ 
		self selector numArgs = 0 ifTrue: [ ^ '{ Object } -> Object' ].
		
		s := WriteStream on: String new.
		s nextPutAll: '{ '.
		self selector numArgs timesRepeat: [ s nextPutAll: 'Object ' ].
		s nextPutAll: '} -> Object'.
		^ s contents ].
	
	returnType := result inject: result anyOne into: [ :c :cc | c commonSuperclassWith: cc ].
	argumentsType := arguments collect: [ :clss | 
		clss inject: result anyOne into: [ :c :cc | c commonSuperclassWith: cc ] ].
	^ argumentsType asString , ' -> ', returnType asString