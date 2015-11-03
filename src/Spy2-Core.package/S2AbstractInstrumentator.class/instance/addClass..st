adding
addClass: cls
	^ S2Instrumentator new
		methods: self methods , (self gather methodsForClass: cls)
		classes: self classes , { cls }
		packages: self packages
			