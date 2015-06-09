as yet unclassified
generatePackage: aPackage class: aClass on: aStream
	| items |
	aStream tab: 4; nextPutAll: '<srcfile name="'; nextPutAll: (self encode: aClass className); nextPutAll: '">'; nextPut: Character lf.
	self
		generateType: 'class' indent: 4
		total: 1
		actual: (((profiler allMethods select: #isCovered) anySatisfy: [ :each | each classSpy baseclassSpy = aClass ])
			ifTrue: [ 1 ] ifFalse: [ 0 ])
		on: aStream.
	self
		generateType: 'method' indent: 4
		total: 1
		actual: (((profiler allMethods select: #isCovered) anySatisfy: [ :each | each classSpy baseclassSpy = aClass ])
			ifTrue: [ 1 ] ifFalse: [ 0 ])
		on: aStream.
	aStream tab: 4; nextPutAll: '<class name="'; nextPutAll: (self encode: aClass className); nextPutAll: '">'; nextPut: Character lf.
	self
		generateType: 'method' indent: 5
		total: (items := aClass methods select: [:m | m package = aPackage ]) size
		actual: ((profiler allMethods select: #isCovered) count: [ :each | items includes: each ])
		on: aStream.
	items do: [ :each | self generatePackage: each method: each on: aStream ].	
	aStream tab: 4; nextPutAll: '</class>'; nextPut: Character lf.
	aStream tab: 4; nextPutAll: '</srcfile>'; nextPut: Character lf.