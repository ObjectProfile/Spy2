as yet unclassified
generatePackage: aPackage method: aMethod on: aStream
	aStream tab: 5; nextPutAll: '<method name="'; nextPutAll: (self encode: aMethod selector); nextPutAll: '">'; nextPut: Character lf.
	self
		generateType: 'method' indent: 6
		total: 1
		actual: (((profiler allMethods select: #isCovered) includes: aMethod) ifTrue: [ 1 ] ifFalse: [ 0 ])
		on: aStream.
	aStream tab: 5; nextPutAll: '</method>'; nextPut: Character lf