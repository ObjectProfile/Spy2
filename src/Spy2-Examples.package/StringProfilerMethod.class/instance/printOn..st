printing
printOn: stream

	super printOn: stream.
	stream nextPutAll: ': '.
	self unique isZero 
		ifTrue: [ 
			0 printOn: stream.
		]
		ifFalse: [ 
		self ratio asFloat printOn: stream.
		].
	stream nextPutAll: ' ('.
	self unique printOn: stream.
	stream nextPut: $).