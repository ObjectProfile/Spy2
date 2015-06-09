as yet unclassified
generatePackage: aPackage on: aStream
	| items |
	aStream tab: 3; nextPutAll: '<package name="'; nextPutAll: (self encode: (aPackage packageName copyReplaceAll: '-' with: '.')); nextPutAll: '">'; nextPut: Character lf.
	self
		generateType: 'class' indent: 4
		total: (items := aPackage allClasses asSet) size
		actual: ((profiler allMethods select: #isCovered thenCollect: [:cls | cls classSpy baseclassSpy]) asSet
			count: [ :each | items includes: each ])
		on: aStream.
	self
		generateType: 'method' indent: 4
		total: (items := aPackage allMethods asSet) size
		actual: ((profiler allMethods select: #isCovered) count: [ :each | items includes: each ])
		on: aStream.
	aPackage classes
		do: [ :class | self generatePackage: aPackage class: class on: aStream ].
	aStream tab: 3; nextPutAll: '</package>'; nextPut: Character lf