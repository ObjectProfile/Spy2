printing
printOn: stream
	stream nextPut: $<.
	self classSpy ifNotNil:[ stream nextPutAll: (self theClass name asString).].
	stream nextPutAll: ('>>').
	self selector ifNotNil:[stream nextPutAll: (self selector asString).].
	stream nextPut: $>