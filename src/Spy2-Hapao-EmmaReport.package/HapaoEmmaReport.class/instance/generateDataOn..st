as yet unclassified
generateDataOn: aStream
	| items |
	aStream tab; nextPutAll: '<data>'; nextPut: Character lf.
	aStream tab; tab; nextPutAll: '<all name="all classes">'; nextPut: Character lf.
	self
		generateType: 'class' indent: 3
		total: (items := profiler allClasses) size
		actual: ((profiler allMethods select: #isCovered thenCollect: [:m | m classSpy baseclassSpy]) asSet
			count: [ :each | items includes: each ])
		on: aStream.
	self
		generateType: 'method' indent: 3
		total: (items := (profiler packages gather: #allMethods ) asSet) size 
		actual: ((profiler allMethods select: #isCovered) count: [ :each | items includes: each ])
		on: aStream.
	profiler packages do: [ :each | self generatePackage: each on: aStream ].
	aStream tab; tab; nextPutAll: '</all>'; nextPut: Character lf.
	aStream tab; nextPutAll: '</data>'; nextPut: Character lf