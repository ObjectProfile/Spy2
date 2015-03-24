action
afterStringNew: string
	self spySender ifNotNil: [:sender | 
		self profiler increment: String.
		self profiler addObject: string]