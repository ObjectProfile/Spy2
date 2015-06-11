accessing
abstractMethod
	^self compiledMethod ifNotNil: [
	 	self compiledMethod isAbstract].