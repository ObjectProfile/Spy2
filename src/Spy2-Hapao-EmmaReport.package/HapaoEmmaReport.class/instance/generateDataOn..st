as yet unclassified
generateDataOn: aStream
	| classes methods |
	classes := profiler allClasses.
	methods := profiler allMethods.
	
	aStream tab; nextPutAll: '<data>'; nextPut: Character lf.
	aStream tab; tab; nextPutAll: '<all name="all classes">'; nextPut: Character lf.
	
	self
		generateType: 'class' indent: 3
		total: classes size
		actual: (classes count: #isPartiallyCovered)
		on: aStream.
	
	self
		generateType: 'method' indent: 3
		total: methods size 
		actual: (methods count: #isCovered)
		on: aStream.

	profiler packages do: [ :each | self generatePackage: each on: aStream ].
	
	aStream tab; tab; nextPutAll: '</all>'; nextPut: Character lf.
	aStream tab; nextPutAll: '</data>'; nextPut: Character lf