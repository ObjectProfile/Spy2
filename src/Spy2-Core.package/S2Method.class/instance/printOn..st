printing
printOn: stream
	stream nextPut: $<.
	self classSpy ifNotNil:[ stream nextPutAll: (self classSpy className asString).].
	stream nextPutAll: ('>>').
	self selector ifNotNil:[stream nextPutAll: (self selector asString).].
	stream nextPut: $>