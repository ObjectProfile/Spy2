as yet unclassified
printOn: stream
	stream nextPutAll: 'WeakList #( '.
	self do: [ :i |
		stream 
			nextPut: $';
			nextPutAll: (i key -> i value) printString;
			nextPut: $';
			space ].
	stream nextPutAll: ')'