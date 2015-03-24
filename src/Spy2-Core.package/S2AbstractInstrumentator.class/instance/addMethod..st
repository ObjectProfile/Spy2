adding
addMethod: method
	^ S2Instrumentator new
		methods: self methods , { method }
		classes: self classes
		packages: self packages
			