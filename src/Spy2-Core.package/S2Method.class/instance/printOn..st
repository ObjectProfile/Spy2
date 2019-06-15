printing
printOn: stream
	self classSpy ifNotNil:[ stream nextPutAll: (self classSpy className asString).].
	stream nextPutAll: ' >> '.
	self selector ifNotNil:[stream nextPutAll: (self selector asString).].