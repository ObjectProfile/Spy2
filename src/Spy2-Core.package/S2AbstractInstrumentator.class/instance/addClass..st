adding
addClass: cls
	^ S2Instrumentator new
		methods: self methods , (self gatherMethodsForClass: cls)
		classes: self classes , { cls }
		packages: self packages
			