adding
addClasses: clsCollection
	^ S2Instrumentator new
		methods: self methods , (self gather methodsForClasses: clsCollection)
		classes: self classes , clsCollection asArray
		packages: self packages
			