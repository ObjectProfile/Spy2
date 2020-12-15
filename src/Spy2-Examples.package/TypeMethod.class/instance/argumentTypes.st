as yet unclassified
argumentTypes

	^ arguments collect: [ :clss | 
		  clss
			  inject: result anyOne
			  into: [ :c :cc | c commonSuperclassWith: cc ] ]