accessing
returnType
	^ result
		inject: result anyOne
		into: [ :c :cc | c commonSuperclassWith: cc ]