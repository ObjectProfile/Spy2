adding
addMethods: methods
	^ S2Instrumentator new
		methods: self methods , methods asArray
		classes: self classes
		packages: self packages
			