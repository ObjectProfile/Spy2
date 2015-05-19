as yet unclassified
mooseDisplayStringOn: stream
	stream 	print: self size.
	self isEmpty ifTrue: [stream nextPutAll: ' items']. 
	self size = 1 ifTrue: [stream nextPutAll:  ' item']. 
	self size > 1 ifTrue: [stream nextPutAll: ' items']