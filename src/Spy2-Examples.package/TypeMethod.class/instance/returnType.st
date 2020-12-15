as yet unclassified
returnType

	^ result
		  inject: result anyOne
		  into: [ :c :cc | c commonSuperclassWith: cc ]