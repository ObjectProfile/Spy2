printing
printOn: stream
	stream nextPut: $<.
	stream nextPutAll: (self className printString).
	stream nextPut: $>