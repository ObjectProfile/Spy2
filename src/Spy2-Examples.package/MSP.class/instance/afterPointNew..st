action
afterPointNew: aPoint
	self spySender ifNotNil: [ :sender | 
		self profiler increment: Point.
		self profiler addObject: aPoint ]