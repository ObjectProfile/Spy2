printing
printOn: stream
	stream nextPut: $<.
	self packageName ifNotNil:
		[ stream nextPutAll: 'P:'. 
		  stream nextPutAll: (self packageName) ].
	stream nextPut: $>